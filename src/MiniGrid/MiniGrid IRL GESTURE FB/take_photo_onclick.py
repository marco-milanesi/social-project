import cv2
from REWARD_FN import action_fb

#def take_photo_onclick():

url="https://10.31.8.33:8080/video"
cam = cv2.VideoCapture(url)

#cv2.namedWindow("test")

img_counter = 0


while True:
    ret, frame = cam.read()
    if not ret:
        print("failed to grab frame")
        break
    cv2.imshow("test", frame)

    k = cv2.waitKey(1)
    if k%256 == 27:
        # ESC pressed
        print("Escape hit, closing...")
        break
    elif k%256 == 32:
        # SPACE pressed
        img_name = "opencv_frame_{}.png".format(img_counter)
        cv2.imwrite(img_name, frame)
        print("{} written!".format(img_name))
        reward = action_fb(img_name)
        print(reward)
        img_counter += 1

cam.release()

#cv2.destroyAllWindows()

    #return reward
