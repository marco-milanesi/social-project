import speech_recognition as sr
def vocal_command():
    recognizer_instance = sr.Recognizer() # Crea una istanza del recognizer
    text=''
    with sr.Microphone() as source:
        recognizer_instance.adjust_for_ambient_noise(source)
        print("Sono in ascolto... parla pure!")
        audio = recognizer_instance.listen(source)
        print("Ok! sto ora elaborando il messaggio!")
    try:
        text = recognizer_instance.recognize_google(audio, language="en-EN")
    except Exception as e:
        print(e)
    return text
