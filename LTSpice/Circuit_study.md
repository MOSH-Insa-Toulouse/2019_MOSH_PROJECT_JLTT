# Analog electronic
During two sessions we studied a transimpedance circuit to amplify the current coming from the gas sensor. The simulation is on the file Adapter_circuit.asc .

## Question 1 : check the operation in nominal conditions

In nominal conditions, the circuit amplify with a gain of approximately 100.

## Question 2 : is the impact of the LTC1050C amplifier offset acceptable ?

With a gain of 100, we have an offset of 0.5mv in output, which make a 1 digit error on the 12 bits ADC converter (the quantum is 5V/4096 = 1.2mV)

## Question 3 : is the impact of the amplifier input current acceptable ?

The impact of the input current is about 1.fA/sqrt(Hz). With a signal of 1Hz, we have an error of $$1.8*10^-15 << 10^-9 $$

## Question 4 : what is the cutoff frequency of each low-pass filter stage?
<ul>
<li> stage 1 : 15.9 Hz </li>
<li> stage 2 : 1.59 Hz </li>
<li> stage 1 : 1.59 kHz </li>
</ul>

## Question 5 : What is the global attenuation of a 50 Hz current noise ?

The global attenuation is 40 dB at 50Hz

## Question 6 : What is the global attenuation of a current noise occurring at the aliasing limit frequency (in the case of Arduino Uno ADC) ?

For the Arduino Uno, the sampling frequency is about $$ 200 kHz/13 = 15.4 kHz $$, which makes the aliasing limit frequency at 7.7 kHz. At this frequency we have an attenuation of 108 dB.

## Question 7 : I must change in the Arbitrary current source from 50 nA to 100 nA.
We thus have I=(V(Sp,Sn)*(10n*(1+V(Gp,Gn)))).
