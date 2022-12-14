"""
Implementation of TAMER (Knox + Stone, 2009)
When training, use 'W' and 'A' keys for positive and negative rewards
"""

# devi installare pip install gym==0.15.4

import asyncio
import gym
from tamer.agent import Tamer
import time
import cv2
time.clock= time.time

async def main():
    cam = cv2.VideoCapture(0)
    ret, frame = cam.read()
    cv2.imshow("test", frame)
    env = gym.make('MountainCar-v0')

    # hyperparameters
    discount_factor = 1
    epsilon = 0  # vanilla Q learning actually works well with no random exploration
    min_eps = 0
    num_episodes_train = 2
    n_episodes = 50
    tame = True  # set to false for vanilla Q learning

    # set a timestep for training TAMER
    # the more time per step, the easier for the human
    # but the longer it takes to train (in real time)
    # 0.2 seconds is fast but doable
    tamer_training_timestep = 0.3
    agent = Tamer(env, num_episodes_train, discount_factor, epsilon, min_eps, tame,
                  tamer_training_timestep, model_file_to_load=None)

    await agent.train(cam, model_file_to_save='autosave')
    cam.release()
    cv2.destroyAllWindows()
    agent.play(n_episodes=1, render=True)
    agent.evaluate(n_episodes)
    agent.plot(n_episodes, num_episodes_train)
    
if __name__ == '__main__':
    asyncio.run(main())



