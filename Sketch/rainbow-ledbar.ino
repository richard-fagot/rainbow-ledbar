/**
 * Programme de pilotage d'une barre de led RGB
 * pour le light painting.
 * 
 * Fonctions (en appuyant sur le bouton) :
 *  - choix d'une couleur fixe fonction de la 
 *    valeur d'un potentiomètre ;
 *  - choix de la variation des couleurs dont
 *    la vitesse dépend de la valeur du potentiomètre
 *    
 * 
 */

void setRGB(byte red, byte green, byte blue);
void setColor(int color);
void ledMode();

const byte R_PIN = 3; // Constante pour la broche 3
const byte G_PIN = 5; // Constante pour la broche 5
const byte B_PIN = 6; // Constante pour la broche 6

const byte BUTTON_PIN = 2; //interruption

int tension, val;
bool isFading = true;

void setup() {

  pinMode (R_PIN, OUTPUT);
  pinMode (G_PIN, OUTPUT);
  pinMode (B_PIN, OUTPUT);
/*
  digitalWrite(R_PIN, HIGH);
  digitalWrite(G_PIN, HIGH);
  digitalWrite(B_PIN, HIGH);
*/  
  pinMode (BUTTON_PIN, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(BUTTON_PIN), ledMode, FALLING);

}

int fadingDirection = 1;
unsigned long previousFadingStep = 0;
unsigned long fadingDelay = 0;
void loop() {
  doTheJob();
}

void doTheJob() {
  tension = analogRead(A5);

  if(isFading) {
    fadingDelay = map(tension, 0, 1023, 600, 3255);
    if(micros() - previousFadingStep > fadingDelay) {
      val += fadingDirection;
      if(val > 6*255) {
        val = 6*255;
        fadingDirection = -1;
      }
      if(val < 0) {
        val = 0;
        fadingDirection = 1;
      }
      setColor(val);
      previousFadingStep = micros();
    }
  
  } else {
    val = map(tension, 0, 1023, 0, 6 * 255);
    setColor(val);
  }
}
unsigned long lastPress = 0;
const byte DEBOUNCE = 200;

void ledMode() {
  if(millis() - lastPress > DEBOUNCE) {
    isFading = !isFading;
    lastPress = millis();  
  }
  
}

void setColor(int color) { // color must be in [0;6*255]
  if ( color < 255) {
    setRGB(0, color, 255);
  }

  if ( color >= 255 && color < 2 * 255) {
    setRGB(0, 255, 255 - (color - 255));
  }

  if ( color >= 2 * 255 && color < 3 * 255) {
    setRGB(color - 2 * 255, 255, 0);
  }

  if ( color >= 3 * 255 && color < 4 * 255) {
    setRGB(255, 255 - (color - 3 * 255), 0);
  }

  if ( color >= 4 * 255 && color < 5 * 255) {
    setRGB(255, 0, color - 4 * 255);
  }

  if ( color >= 5 * 255) {
    setRGB(255 - (color - 5 * 255), 0, 255);
  }
}

void setRGB(byte red, byte green, byte blue) { // reçoit valeur 0-255 par couleur

  analogWrite(R_PIN, red);
  analogWrite(G_PIN, green);
  analogWrite(B_PIN, blue);
}
