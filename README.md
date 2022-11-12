[![Badge License]][License]



<div align = center>


# Mini Project - Learning from Human Feedback


*Assistant Professor: Silvia Tulli* <br>
*Course of Social Robotics Coordinated by Mohamed Chetouani*

<br>


## Team

[![Badge Marco]][Marco] 
[![Badge Andrea]][Andrea]
[![Badge Sofia]][Sofia]
[![Badge Federico]][Federico]

<br>

## Table of Contents
<div align = left>

- [Mini Project - Learning from Human Feedback](#mini-project---learning-from-human-feedback)
  - [Team](#team)
  - [Table of Contents](#table-of-contents)
- [1. Minigrid](#1-minigrid)
  - [1.2 Environments](#12-environments)
    - [1.2.1 Reinforcement Learning: MiniGrid with Policy Gradient](#121-reinforcement-learning-minigrid-with-policy-gradient)
      - [Run the project](#run-the-project)
      - [Results](#results)
    - [1.2.1 Inverse Reinforcement Learning on Minigrid](#121-inverse-reinforcement-learning-on-minigrid)
      - [Run the project](#run-the-project-1)
- [2. Tamer](#2-tamer)

<div align = center>

# 1. Minigrid

<div align = left>

The <a href="https://github.com/Farama-Foundation/Minigrid">Minigrid</a> library contains a collection of discrete grid-world environments to conduct research on Reinforcement Learning. To **install** the Minigrid library use `pip install minigrid`.

## 1.2 Environments
The included environments can be divided in two groups. The original Minigrid environments and the BabyAI environments. For this project the first one were chosen: these environments have in common a triangle-like agent with a discrete action space that has to navigate a 2D map with different obstacles (Walls, Lava, Dynamic obstacles) depending on the environment. The task to be accomplished is described by a mission string returned by the observation of the agent.

### 1.2.1 Reinforcement Learning: MiniGrid with Policy Gradient

In this session, it will show the pytorch-implemented Policy Gradient in Gym-MiniGrid Environment. Through this, you will know how to implement Vanila Policy Gradient (also known as REINFORCE), and test it on open source RL environment.

#### Run the project
The notebook is available <a href="https://github.com/marco-milanesi/social-project/blob/main/src/MiniGrid/Policy_Gradient_With_Gym_MiniGrid.ipynb">here</a>, as presented in the first section, the following commands to install the packages have to be run:

```
pip install gym==0.22
pip install gym-minigrid==1.0.0
```
Since the code is implemented in GCollab no other installations are needed.

#### Results

|    Learning Curve    |    Total reward: 0.802 <br> Total length: 11 |  Total reward: 0.604 <br> Total length: 22 |  
|:------------:|:-------------:|:-------------:|
| ![Image1] |  <video src="https://user-images.githubusercontent.com/47824890/201166814-94f135ec-2a95-4494-a8bb-3768cbca4ad1.mp4">| <video src="https://user-images.githubusercontent.com/47824890/201166854-f5e1f61c-5d9b-4265-8014-0dba8dd47692.mp4">|

### 1.2.1 Inverse Reinforcement Learning on Minigrid
The aim of this project is to provide a tool to train an agent on Minigrid. The human player can make game demonstrations and then the agent is trained from these demonstrations using Inverse Reinforcement Learning techniques. The code is taken from <a href="https://github.com/francidellungo/Minigrid_HCI-project">https://github.com/francidellungo/Minigrid_HCI-project</a>

#### Run the project
> From the original project the `view` function in the files `./policy_nets/emb_conv1x1_mlp_policy.py` and `./policy_nets/one_hot_conv_policy.py` have been replaced with 'reshape' because of an error.

However in the <a href="https://github.com/marco-milanesi/social-project/tree/main/src/MiniGrid%20IRL">folder</a> the functions have been already replaced and the code is ready to be executable. To run the code:

1. go to the directory in which you have downloaded the project
2. go inside Minigrid_HCI-project folder with the command: `cd Minigrid_HCI-project`
3. Install the `requirements.txt` with the command `pip install -r requirements.txt`
4. run the application with the command `python agents_window.py`

#### Results 
|  Total reward: 0.802 <br> Total length: 0.946 |
|:-----------------------------------------:|
|<video src="https://user-images.githubusercontent.com/47824890/201468083-fcd63461-97a0-40fe-a6f8-8c15f5ae7aad.mp4">|




<div align = center>

# 2. Tamer
<div align = left>

TAMER (Training an Agent Manually via Evaluative Reinforcement) is a framework for human-in-the-loop Reinforcement Learning. The code is taken from <a href="https://github.com/benibienz/TAMER">https://github.com/benibienz/TAMER</a>


## 2.1 Run the project
* You need python 3.7+
* The version of gym has to be the 0.15.4, installing it running the following command `pip install gym==0.15.4`
* numpy, sklearn, pygame and gym
* go inside TAMER folder with the command: `cd TAMER`
* to run the code `python run.py`

## 2.2 Results

| Reseults reward | Interface game |
|:---:|:----:|
| ![TAMER1] | ![TAMER2] |







<!----------------------------------{ Images }--------------------------------->


[Image1]: README_Images/result-minigrid.png
[Video1]: README_Images/minigrid.mp4
[Video2]: README_Images/minigrid2.mp4

[TAMER1]: README_Images/tamer.png
[TAMER2]: README_Images/tamer-terminal.png
<!----------------------------------------------------------------------------->

 [Andrea]: https://github.com/gianandry

 [Marco]: https://github.com/marco-milanesi

 [Sofia]: https://github.com/sofiatoss

 [Federico]: https://github.com/fedichicco

 [License]: LICENSE


<!---------------------------------{ Badges }---------------------------------->

 [Badge License]: https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge

 [Badge Andrea]: https://img.shields.io/badge/Andrea_Campanelli-8a61c7?style=for-the-badge

 [Badge Marco]: https://img.shields.io/badge/Marco_Milanesi-4776c1?style=for-the-badge

 [Badge Sofia]: https://img.shields.io/badge/Sofia_Toscano-2930c1?style=for-the-badge

 [Badge Federico]: https://img.shields.io/badge/Federico_Scassola-9cf?style=for-the-badge
