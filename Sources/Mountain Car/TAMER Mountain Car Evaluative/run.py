"""
Implementation of TAMER (Knox + Stone, 2009)
When training, use 'W' and 'A' keys for positive and negative rewards
"""

# devi installare pip install gym==0.15.4

import asyncio
import gym
from tamer.agent import Tamer
import matplotlib.pyplot as plt


async def main():
    env = gym.make('MountainCar-v0')

    # hyperparameters
    discount_factor = 1
    epsilon = 0  # vanilla Q learning actually works well with no random exploration
    min_eps = 0
    num_episodes = 5
    tame = True  # set to false for vanilla Q learning
    n_episodes = 20
    # set a timestep for training TAMER
    # the more time per step, the easier for the human
    # but the longer it takes to train (in real time)
    # 0.2 seconds is fast but doable
    tamer_training_timestep = 0.3

    agent = Tamer(env, num_episodes, discount_factor, epsilon, min_eps, tame,
                  tamer_training_timestep, model_file_to_load=None)

    await agent.train(model_file_to_save='autosave')
    agent.play(n_episodes=1, render=True)
    agent.evaluate(n_episodes)
    agent.plot(n_episodes, num_episodes)


if __name__ == '__main__':
    asyncio.run(main())
