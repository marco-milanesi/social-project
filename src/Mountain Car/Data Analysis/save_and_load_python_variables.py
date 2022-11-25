import pickle
from scipy.stats import ttest_ind

#f = open('store.pckl', 'wb')
#pickle.dump(-success[0], f)
#f.close()

f = open('Reward_keyboard.pckl', 'rb')
keyboard_rewards = pickle.load(f)
f.close()

f = open('Reward_vocal.pckl', 'rb')
vocal_rewards = pickle.load(f)
f.close()

f = open('Reward_gesture.pckl', 'rb')
gesture_rewards = pickle.load(f)
f.close()

f = open('Reward_irl.pckl', 'rb')
irl_rewards = pickle.load(f)
f.close()
print("T-test applied to data obtained from keyboard and vocal feedback:")
print(ttest_ind(keyboard_rewards, vocal_rewards, equal_var = False))
print("T-test applied to data obtained from keyboard and gesture feedback:")
print(ttest_ind(keyboard_rewards, gesture_rewards, equal_var= False))
print("T-test applied to data obtained from gesture and vocal feedback:")
print(ttest_ind(gesture_rewards, vocal_rewards, equal_var = False))

print("T-test applied to data obtained from keyboard feedback and inverse reinforcement learning:")
print(ttest_ind(irl_rewards, keyboard_rewards, equal_var = False))