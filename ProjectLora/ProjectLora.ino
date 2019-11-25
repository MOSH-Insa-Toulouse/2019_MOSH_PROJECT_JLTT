 /*
  * Contributors :
  * Théo Zanchi 
  * Jérémy Turi
  * Loan Revardel
  * Thomas Lautrédou
  *
  */
 
 /* Connect the RN2xx3 as follows:
 * RN2xx3 -- Arduino
 * Uart TX -- 10
 * Uart RX -- 11
 * Reset -- 12
 * Vcc -- 3.3V
 * Gnd -- Gnd
 */
 
#include <rn2xx3.h>
#include <SoftwareSerial.h>
#include <avr/sleep.h>
#include <avr/power.h>
#include <avr/wdt.h>

volatile int f_wdt=1;

SoftwareSerial mySerial(10, 11); // RX, TX

// Define sensor pin
#define sensorPin A0
#define gasSensorPin A1
#define buzzerPin 2


//Threshold to trigger on the alarm buzzer or turn it off
#define THRESHOLD_HIGH 1.1
#define THRESHOLD_LOW  0.9


//create an instance of the rn2xx3 library,
//giving the software serial as port to use
rn2xx3 myLora(mySerial);

typedef enum
{
  IDLE_STATE, ALARM, MEASURE_VALUE
} T_State;

T_State myState;

// the setup routine runs once when you press reset:
void setup()
{
  //output LED pin
  pinMode(13, OUTPUT);
  led_on();

    /*** Setup the WDT ***/
   /* Clear the reset flag. */
   MCUSR &= ~(1<<WDRF);
   /* In order to change WDE or the prescaler, we need to
    * set WDCE (This will allow updates for 4 clock cycles).
    */
   WDTCSR |= (1<<WDCE) | (1<<WDE);
   /* set new watchdog timeout prescaler value */
   WDTCSR = 1<<WDP0 | 1<<WDP3; /* 8.0 seconds */
   /* Enable the WD interrupt (note no reset). */
   WDTCSR |= _BV(WDIE);
   Serial.println("Initialisation complete.");
   delay(100); //Allow for serial print to complete.
   attachInterrupt(0, pin2Interrupt, CHANGE);
   Serial.println("Interrup attached.");
   delay(200);

  //input sensor pin : potentiometer
  pinMode(sensorPin, INPUT);
  //input for GasSensor
  pinMode(gasSensorPin, INPUT);

  // Open serial communications and wait for port to open:
  Serial.begin(57600); //serial port to computer
  mySerial.begin(9600); //serial port to radio
  Serial.println("Startup");

  initialize_radio();

  //transmit a startup message
  myLora.tx("TTN Mapper on TTN Enschede node");

  led_off();
  delay(2000);
}

void initialize_radio()
{
  //reset rn2483
  pinMode(12, OUTPUT);
  digitalWrite(12, LOW);
  delay(500);
  digitalWrite(12, HIGH);

  delay(100); //wait for the RN2xx3's startup message
  mySerial.flush();

  //Autobaud the rn2483 module to 9600. The default would otherwise be 57600.
  myLora.autobaud();

  //check communication with radio
  String hweui = myLora.hweui();
  while(hweui.length() != 16)
  {
    Serial.println("Communication with RN2xx3 unsuccessful. Power cycle the board.");
    Serial.println(hweui);
    delay(10000);
    hweui = myLora.hweui();
  }

  //print out the HWEUI so that we can register it via ttnctl
  Serial.println("When using OTAA, register this DevEUI: ");
  Serial.println(myLora.hweui());
  Serial.println("RN2xx3 firmware version:");
  Serial.println(myLora.sysver());

  //configure your keys and join the network
  Serial.println("Trying to join TTN");
  bool join_result = false;


  /*
   * ABP: initABP(String addr, String AppSKey, String NwkSKey);
   * Paste the example code from the TTN console here:
   */
  const char *devAddr = "26011816";
  const char *nwkSKey = "47886652FC641E7AADD3DFD40041AB0E";
  const char *appSKey = "48594DB1F56E07C45049B477ECF9CFF8";

  join_result = myLora.initABP(devAddr, appSKey, nwkSKey);

  /*
   * OTAA: initOTAA(String AppEUI, String AppKey);
   * If you are using OTAA, paste the example code from the TTN console here:
   */
  //const char *devEui = "0004A30B00E94D4E";
  //const char *appEui = "70B3D57ED0025AEB";
  //const char *appKey = "0D518E5463B1F54758E6BAF2E3F51BA4";

  //join_result = myLora.initOTAA(appEui, appKey, devEui);


  while(!join_result)
  {
    Serial.println("Unable to join. Are your keys correct, and do you have TTN coverage?");
    delay(60000); //delay a minute before retry
    join_result = myLora.init();
  }
  Serial.println("Successfully joined TTN");

}

// the loop routine runs over and over again forever:
void loop()
{
  /*
   *Jérémy Turi
   *18 November 2019
   *Proposition of State Machine
   */

   /*Sleep(x:ms);
   valueGasSensor = analogRead(gasSensorPin);
   if(state == MEASURE_VALUE && valueGasSensor < threshold_Low)
   {
      buzzer_on()
      state = ALARM;
   }
   if(state == ALARM && valueGasSensor> threshold_High)
   {
      buzzer_off();
   }
   sendValue(valueGasSensor)*/

    if(f_wdt == 1)
    {
     int value = analogRead(sensorPin);
      delay(100);
      int valueGasSensor = analogRead(gasSensorPin);
      sendValueGasSensor(value, valueGasSensor);
     
     /* Don't forget to clear the flag. */
     f_wdt = 0;
     
     Serial.println("enterring sleep mode.");
     delay(200);

     //myLora.sleep(10000);
     //delay(200);
  
     /* Re-enter sleep mode. */
     enterSleep();

     //digitalWrite(10, LOW);
     //delay(1);
     //myLora.wake();
  
     Serial.println("outging from sleep mode.");
     delay(200);
   }
   else
   {
     /* Do nothing. */
   }
}

void led_on()
{
  digitalWrite(13, 1);
}

void led_off()
{
  digitalWrite(13, 0);
}

void sendValueGasSensor(int value, int v_gasSensor)
{
    led_on();
    
    char str[4];
    str[0] = (value >> 8) & 0xFF;
    str[1] = value & 0xFF;
    str[2] = (v_gasSensor >> 8) & 0xFF;
    str[3] = (v_gasSensor & 0xFF);

    Serial.print("Send sensor value : ");
    Serial.println(value);
    Serial.print("Gas Value : ");
    Serial.println(v_gasSensor);
    Serial.print("Rs/RL = ");
    Serial.println((float) (1023-v_gasSensor)/v_gasSensor);
 
    myLora.txBytes(str, sizeof(str));
    
    led_off();
    delay(200);
}

void buzzer_on()
{
  digitalWrite(buzzerPin, HIGH);
}

void buzzer_off()
{
  digitalWrite(buzzerPin, LOW);
}

//***************************************************
void pin2Interrupt(void)
{
 cli();
 sleep_disable(); /* First thing to do is disable sleep. */
 power_all_enable();
 //if(f_wdt == 0) {f_wdt=1;}
 delay(200);
 Serial.println("wakeUp Interrupt ...");
 delay(200);
 //detachInterrupt(0);
 //digitalWrite(LED_PIN, !digitalRead(LED_PIN));
 sei();
}

/***************************************************
*  Name:        ISR(WDT_vect)
*  Returns:     Nothing.
*  Parameters:  None.
*  Description: Watchdog Interrupt Service. This
*               is executed when watchdog timed out.
*
***************************************************/
ISR(WDT_vect)
{
 if(f_wdt == 0) {f_wdt=1;}
 else
 {
   Serial.println("WDT Overrun!!!");
 }
}

/***************************************************
*  Name:        enterSleep
*  Returns:     Nothing.
*  Parameters:  None.
*  Description: Enters the arduino into sleep mode.
*
***************************************************/
void enterSleep(void)
{
 //set_sleep_mode(SLEEP_MODE_PWR_SAVE);   /* EDIT: could also use SLEEP_MODE_PWR_DOWN for lowest power consumption. */
 set_sleep_mode(SLEEP_MODE_PWR_DOWN);
 sleep_enable();
 /* Now enter sleep mode. */
 sleep_mode();
 /* The program will continue from here after the WDT timeout*/
 sleep_disable(); /* First thing to do is disable sleep. */
 /* Re-enable the peripherals. */
 power_all_enable();
}
