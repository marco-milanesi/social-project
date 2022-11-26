import gym
import readchar
import numpy as np
import time
import pygame
import os

time.clock = time.time
fps = 15
n_episodes=40

pygame.init()
DISPLAYSURF = pygame.display.set_mode((300,300),0,32)
clock = pygame.time.Clock()

env = gym.make('MountainCar-v0')


trajectories = []
episode_step = 0
scores = []

for episode in range(n_episodes):
    trajectory = []
    step = 0
    score = 0

    env.reset()
    print("episode_step", episode_step)

    action = 2
    while True: 
        clock.tick(fps)
        env.render()
        print("step", step)
        
        if step == 0:
            clock.tick(0.5)
        
        for event in pygame.event.get():
            if event.type == pygame.KEYDOWN:
                if event.key == pygame.K_d:
                    action = 2
                elif event.key == pygame.K_s:
                    action = 1
                elif event.key == pygame.K_a:
                    action = 0

        state, reward, done, _ = env.step(action)
        score += reward

        if done and step > 129: # trajectory_length : 130
            break
        
        
        trajectory.append((state[0], state[1], action))
        step += 1
        
    scores.append(score)
    trajectory_numpy = np.array(trajectory, float)
    print("trajectory_numpy.shape", trajectory_numpy.shape)
    episode_step += 1
    trajectories.append(trajectory)

np_trajectories = np.array(trajectories, float)
print("np_trajectories.shape", np_trajectories.shape)

np.save("./expert_demo/expert_demo", arr=np_trajectories)

np.save("./expert_demo/expert_scores/expert_demo_scores", arr=scores)