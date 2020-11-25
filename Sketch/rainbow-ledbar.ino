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
#define ATTINY85

void setRGB(byte red, byte green, byte blue);
void setColor(int color);
void ledMode();

#ifdef ATTINY85
const byte R_PIN = PB4; // Broche de la led rouge
const byte G_PIN = PB1; // Broche de la led verte
const byte B_PIN = PB0; // Broche de la led bleue
const byte POTAR_PIN = PB3; // Broche du convertisseur A/N de potentiomètre
const byte BUTTON_PIN = PCINT2; //Broche interupt du bouton de sélection de mode
#else
const byte R_PIN = 3; // Broche de la led rouge
const byte G_PIN = 5; // Broche de la led verte
const byte B_PIN = 6; // Broche de la led bleue
const byte POTAR_PIN = A0; // Broche du convertisseur A/N de potentiomètre
const byte BUTTON_PIN = 2; //Broche interupt du bouton de sélection de mode
#endif 


const int MAX_ANALOG_READ = 1023;
int potardValue, hue = 0;
float col[3], brightness = 1.0;
bool isFading = true;

const byte FADING_SPEED = 0;
const byte FADING_BRIGHTNESS = 1;
const byte STATIC_COLOR_COLOR = 2;
const byte STATIC_COLOR_BRIGHTNESS = 3;
byte MODE = FADING_SPEED;

const unsigned long FADING_DELAY_MIN = 0;
const unsigned long FADING_DELAY_MAX = 5000000/1024; // 5 seconds

int fadingDirection = 1;
unsigned long previousFadingStep = 0;
unsigned long fadingDelay = FADING_DELAY_MAX;

void setup() {

  pinMode (R_PIN, OUTPUT);
  pinMode (G_PIN, OUTPUT);
  pinMode (B_PIN, OUTPUT);

  pinMode (BUTTON_PIN, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(BUTTON_PIN), ledMode, FALLING);

}

void loop() {
  doTheJob();
  /*
  setRGB(255,0,0);
  delay(1000);
  setRGB(0,255,0);
  delay(1000);
  setRGB(0,0,255);
  delay(1000);
  */
}

void doTheJob() {
  
  if(MODE == FADING_SPEED) {
    setFadingSpeed();
    fading();
  }

  if(MODE == FADING_BRIGHTNESS) {
    setBrightness();
    fading();
  }

  if(MODE == STATIC_COLOR_COLOR) {
    setHue();
    setColor();
  }

  if(MODE == STATIC_COLOR_BRIGHTNESS) {
    setBrightness();
    setColor();
  }

  
}

void setHue() {
  potardValue = analogRead(POTAR_PIN);
  hue = potardValue;
}

void setBrightness() {
  potardValue = analogRead(POTAR_PIN);
  brightness = (float) map(potardValue, 0, MAX_ANALOG_READ, 0, MAX_ANALOG_READ) / MAX_ANALOG_READ;
}

void setFadingSpeed() {
  potardValue = analogRead(POTAR_PIN);
  fadingDelay = map(potardValue, 0, MAX_ANALOG_READ, FADING_DELAY_MIN, FADING_DELAY_MAX);
}

void fading() {
  if(micros() - previousFadingStep > fadingDelay) {
    hue += fadingDirection;
    if(hue > MAX_ANALOG_READ) {
      hue = MAX_ANALOG_READ;
      fadingDirection = -1;
    }
    if(hue < 0) {
      hue = 0;
      fadingDirection = 1;
    }
    setColor();
    previousFadingStep = micros();
  }
}


unsigned long lastPress = 0;
const byte DEBOUNCE = 200;

void ledMode() {
  if(millis() - lastPress > DEBOUNCE) {
    MODE++;
    if(MODE > STATIC_COLOR_BRIGHTNESS) {
      MODE = FADING_SPEED;
    }
    
    lastPress = millis();  
  }
  
}

void setColor() {
  byte rgb[3];
  hsvToRgb((float)hue/MAX_ANALOG_READ, 1.0, brightness, rgb);
  setColor(rgb);
}

void setColor(byte rgb[3]) {
  analogWrite(R_PIN, rgb[0]);
  analogWrite(G_PIN, rgb[1]);
  analogWrite(B_PIN, rgb[2]);  
}

void setRGB(byte red, byte green, byte blue) { // reçoit valeur 0-255 par couleur

  analogWrite(R_PIN, red);
  analogWrite(G_PIN, green);
  analogWrite(B_PIN, blue);
}

void hsvToRgb(double h, double s, double v, byte rgb[]) {
    double r, g, b;

    int i = int(h * 6);
    double f = h * 6 - i;
    double p = v * (1 - s);
    double q = v * (1 - f * s);
    double t = v * (1 - (1 - f) * s);

    switch(i % 6){
        case 0: r = v, g = t, b = p; break;
        case 1: r = q, g = v, b = p; break;
        case 2: r = p, g = v, b = t; break;
        case 3: r = p, g = q, b = v; break;
        case 4: r = t, g = p, b = v; break;
        case 5: r = v, g = p, b = q; break;
    }

    rgb[0] = r * 255;
    rgb[1] = g * 255;
    rgb[2] = b * 255;
}
