import pickle
import numpy as np
import matplotlib.pyplot as plt


f = open('train_DQL.pckl', 'rb')
RL_DQN = pickle.load(f)
f.close()

print(RL_DQN)
f = open('train_D3QN.pckl', 'rb')
RL_D3QN = pickle.load(f)
f.close()

f = open('IRL-data.pckl', 'rb')
irl1 = pickle.load(f)
f.close()

#
plt.figure()
plt.plot(RL_DQN['Average Score'], label='RL_DQN')
plt.plot(RL_D3QN['Average Score'], label='RL_D3QN')
plt.plot(irl1[3:], label = "irl")
plt.grid()
plt.legend()
plt.savefig('RL+IRL.pdf', format='pdf')
plt.show()
