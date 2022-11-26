import gym
import numpy as np
import matplotlib.pyplot as plt

from maxent import *

train_episodes = 40000
print_every = 200
n_states = 400 # position - 20, velocity - 20
n_actions = 3
one_feature = 20 # number of state per one feature
q_table = np.zeros((n_states, n_actions)) # (400, 3)
feature_matrix = np.eye((n_states)) # (400, 400)

gamma = 0.99
q_learning_rate = 0.03
theta_learning_rate = 0.05

np.random.seed(1)

def idx_demo(env, one_feature):
    env_low = env.observation_space.low     
    env_high = env.observation_space.high   
    env_distance = (env_high - env_low) / one_feature  

    raw_demo = np.load(file="expert_demo/expert_demo.npy")
    demonstrations = np.zeros((len(raw_demo), len(raw_demo[0]), 3))

    for x in range(len(raw_demo)):
        for y in range(len(raw_demo[0])):
            position_idx = int((raw_demo[x][y][0] - env_low[0]) / env_distance[0])
            velocity_idx = int((raw_demo[x][y][1] - env_low[1]) / env_distance[1])
            state_idx = position_idx + velocity_idx * one_feature

            demonstrations[x][y][0] = state_idx
            demonstrations[x][y][1] = raw_demo[x][y][2] 
            
    return demonstrations

def idx_state(env, state):
    env_low = env.observation_space.low
    env_high = env.observation_space.high 
    env_distance = (env_high - env_low) / one_feature 
    position_idx = int((state[0] - env_low[0]) / env_distance[0])
    velocity_idx = int((state[1] - env_low[1]) / env_distance[1])
    state_idx = position_idx + velocity_idx * one_feature
    return state_idx

def update_q_table(state, action, reward, next_state):
    q_1 = q_table[state][action]
    q_2 = reward + gamma * max(q_table[next_state])
    q_table[state][action] += q_learning_rate * (q_2 - q_1)


def main():
    env = gym.make('MountainCar-v0')
    demonstrations = idx_demo(env, one_feature)

    expert = expert_feature_expectations(feature_matrix, demonstrations)
    learner_feature_expectations = np.zeros(n_states)

    theta = -(np.random.uniform(size=(n_states,)))

    episodes, scores= [], []
    avg_scores = []

    for episode in range(train_episodes):
        state = env.reset()
        score = 0

        if (episode != 0 and episode == 4000) or (episode > 10000 and episode % 5000 == 0):
            learner = learner_feature_expectations / episode
            maxent_irl(expert, learner, theta, theta_learning_rate)
                
        while True:
            state_idx = idx_state(env, state)
            action = np.argmax(q_table[state_idx])
            next_state, reward, done, _ = env.step(action)
            
            irl_reward = get_reward(feature_matrix, theta, n_states, state_idx)
            next_state_idx = idx_state(env, next_state)
            update_q_table(state_idx, action, irl_reward, next_state_idx)
            
            learner_feature_expectations += feature_matrix[int(state_idx)]

            score += reward
            state = next_state
            
            if done:
                scores.append(score)
                episodes.append(episode)
                break
            
        avg_score = np.mean(scores[-500:])
        avg_scores.append(avg_score)            
            
        #np.save("./trained_models/model_master", arr=q_table)   
        if episode % print_every == 0:
            print('{} episode score is {:.2f}'.format(episode, avg_score))        
        
        scores.append(score)

        
    np.save("learning_curves/scores_max_entropy", arr=scores)  
    np.save("learning_curves/avg_scores_max_entropy", arr=avg_scores) 
    
    plt.plot(avg_scores, 'b')
    plt.grid()
    plt.savefig("./learning_curves/learning_curve.pdf", format='pdf')
        
        

if __name__ == '__main__':
    main()