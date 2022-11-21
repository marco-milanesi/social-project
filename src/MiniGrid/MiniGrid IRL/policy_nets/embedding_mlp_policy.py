import torch
import torch.nn as nn
import torch.nn.functional as F
from torch import optim
import numpy as np
from torch.optim.lr_scheduler import ReduceLROnPlateau

from policy_nets.base_policy_net import PolicyNet
from utils import conv_output_size, get_input_shape


class EmbMlpPolicyNet(PolicyNet):

    def __init__(self, input_shape, num_actions, env, key=None, folder=None):
        # TODO sistemare signature di costruttore e init
        super(EmbMlpPolicyNet, self).__init__(input_shape, num_actions, env, key, folder)
        num_embeddings = [9, 6, 1]
        self.embedding_ch0 = nn.Embedding(11, num_embeddings[0])
        self.embedding_ch1 = nn.Embedding(6, num_embeddings[1])
        self.embedding_ch2 = nn.Embedding(3, num_embeddings[2])
        self.input_length = int(np.prod(input_shape[1:]) * sum(num_embeddings))
        hidden_units = 2000
        self.affine1 = nn.Linear(self.input_length, hidden_units)
        self.affine2 = nn.Linear(hidden_units, num_actions)

        self.optimizer = optim.Adam(self.parameters(), lr=10 ** -3)
        self.scheduler_kwargs = {"factor": 0.2, "patience": 10, "min_lr": 10 ** -4}
        self.scheduler = ReduceLROnPlateau(self.optimizer, 'max', **self.scheduler_kwargs)

    def forward(self, x):
        x = x.reshape(-1, *self.input_shape).long()

        e0 = self.embedding_ch0(x[:, 0, ...]).permute(0, 3, 1, 2)
        e1 = self.embedding_ch1(x[:, 1, ...]).permute(0, 3, 1, 2)
        e2 = self.embedding_ch2(x[:, 2, ...]).permute(0, 3, 1, 2)
        x = torch.cat((e0, e1, e2), 1).float()

        x = x.reshape(-1, self.input_length)

        x = F.relu(self.affine1(x))
        act_probs = self.affine2(x)
        return act_probs


def get_net(*args, **kwargs):
    return EmbMlpPolicyNet(*args, **kwargs)
