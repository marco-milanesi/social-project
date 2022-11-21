import cv2
from tamer.REWARD_FN import action_fb
import time

def take_photo(cam):

    
    #cv2.namedWindow("test")

    img_counter = 0

    start = time.time()
    while True:
        ret, frame = cam.read()
        if not ret:
            print("failed to grab frame")
            break
        cv2.imshow("test", frame)
        end = time.time()
        dt = end-start
        k = cv2.waitKey(1)
        if k%256 == 27:
            # ESC pressed
            print("Escape hit, closing...")
            break
        #elif k%256 == 32:
            # SPACE pressed
        if (dt > 3):    
            img_name = "opencv_frame_{}.png".format(img_counter)
            cv2.imwrite(img_name, frame)
            print("{} written!".format(img_name))
            reward = action_fb(img_name)
            print(reward)
            img_counter += 1
            dt = 0
            break

        

    return reward
