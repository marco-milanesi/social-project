import cv2
import mediapipe as mp
import os
import time
import math

def action_fb(image_name):

  #IMAGE_FILES = [image_name]



  mp_drawing = mp.solutions.drawing_utils 
  mp_drawing_styles = mp.solutions.drawing_styles
  mp_hands = mp.solutions.hands

    #with chiude i file dopo l'uscita dal blocco
    #inizializza un oggetto della classe Hands:
    #STATIC_IMAGE_MODE: se False, considera le immagini in input come parte 
    # di un video stream, dunque correlate tra loro (fa la detection nelle prime
    # immagini, poi tiene traccia del loro percorso). Se True, considera le immagini
    # del tutto scorrelate (esegue ogni volta la detection).
    #MAX_NUM_HANDS: massimo numero di mani da trovare
    #MODEL_COMPLEXITY: complessità del modello (dunque accuratezza richiesta)
    #MIN_DETECTION_CONFIDENCE: minimo valore di confidenza nell'individuazione delle mani
    #MIN_TRACKING_CONFIDENCE: minimo valore di confidenza nel tracciamento dei landmarks

  with mp_hands.Hands(
      static_image_mode=False,
      max_num_hands=2,
      model_complexity=1,
      min_detection_confidence=0.8,#sopra 0.8 non va
      min_tracking_confidence=0.8) as hands:
    #name_custom = time.strftime("%Y%m%d_%H%M%S")
    #os.makedirs('PROVA'+name_custom)
    #with open('./PROVA'+name_custom+'/PROVA'+  name_custom + '.txt','w+') as f:
      TUTTI_I_MARKER = []
      #for idx, file in enumerate(IMAGE_FILES): #per ogni immagine nella lista
        #legge un'immagine e la ruota attorno all'asse Y in modo da rendere coerente la handedness
      image = cv2.flip(cv2.imread(image_name), 1)
        #converte l'immagine da BGR a RGB e ritorna landmarks e handedness
      results = hands.process(cv2.cvtColor(image, cv2.COLOR_BGR2RGB))
        # Print handedness and draw hand landmarks on the image.
      #if idx != 0:
      #  f.write("\n")
        
        
      for hand_landmarks in results.multi_hand_landmarks:
        my_marker = []
        for indice in range(21):
          denorm_x = hand_landmarks.landmark[indice].x * image.shape[1] #image.shape ritorna una tupla con (nr_px_y,nr_px_x,_)
          denorm_y = hand_landmarks.landmark[indice].y * image.shape[0]
          denorm_z = hand_landmarks.landmark[indice].z * image.shape[1]
          xyz_marker = [denorm_x,denorm_y,denorm_z]
          my_marker.append(xyz_marker)
        #  f.write(str(denorm_x) \
        #    + ' ' + str(denorm_y) + ' '\
        #        + str(denorm_z) + "\n")
                
        if not results.multi_hand_landmarks:
          continue
        image_height, image_width, _ = image.shape
        annotated_image = image.copy()
        for hand_landmarks in results.multi_hand_landmarks:
          mp_drawing.draw_landmarks(
            annotated_image,
            hand_landmarks,
            mp_hands.HAND_CONNECTIONS,
            mp_drawing_styles.get_default_hand_landmarks_style(),
            mp_drawing_styles.get_default_hand_connections_style())
        #  cv2.imwrite('./PROVA' + name_custom + '/PROVA' + name_custom + str(idx) + '.png', cv2.flip(annotated_image, 1))
        #print(my_marker) 
        TUTTI_I_MARKER.append(my_marker)
      #print(TUTTI_I_MARKER)
      x_p = image_width - hand_landmarks.landmark[4].x*image.shape[1]
      y_p = image_height - hand_landmarks.landmark[4].y*image.shape[0]

      x_m = image_width - hand_landmarks.landmark[17].x*image.shape[1]
      y_m = image_height - hand_landmarks.landmark[17].y*image.shape[0]

      x_i = image_width - hand_landmarks.landmark[8].x*image.shape[1]
      y_i = image_height - hand_landmarks.landmark[8].y*image.shape[0]

      if y_p > y_m:
        reward = "yes"
      if y_p <= y_m:
        reward = "no"

      #print(INDEX_MARKER)
      #I return h_im-y because imshow puts the origin at the top of the image for y
  return reward

