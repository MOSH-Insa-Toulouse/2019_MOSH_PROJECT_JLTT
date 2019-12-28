# 2019_MOSH_PROJECT_JLTT : Kicad and Arduino LoraProject for SMART GAS sensor
> Loan Revardel / Jérémy Turi / Théo Zanchi / Thomas Lautrédou

#### <em> Key-words: </em> ```Arduino```, ```KiCad```, ```The Thing Network```, ```LoRa```, ```Node-RED```, ```IoT```, ```Gas sensor```.

This project was carried out as part of ISS (Innovative Smart Systems) 5th year at INSA Toulouse. The objective was to develop a gas sensor able to detect dangerous gases for human beings and communicating datas via Lora. Then, using the Node-RED software, we retrieved the data and displayed it on a graphical interface that the user could understand. As soon as a dangerous gas is detected, a buzzer is triggered to warn the user and avoid potential casualties. 

## Content of the Project

This repository contains : 
<ul>
<li><strong>KiCad files</strong> : We developed a shield for the gas sensor compatible with Arduino Uno (using [KiCad](http://kicad-pcb.org/))</li>
<li><strong>Arduino SW files</strong></li>
<li>A <strong>Node-RED dashboard</strong> to display datas retrieved from the gas sensor</li>
<li><strong>LT Spice files</strong> with which we tested our adapter circuit for the gas sensor</li>
</ul>

## MOSH

During the MOSH module, we choose to realize the smart device project. This project was about gas sensor data collecting. 

### Prototype

The smart device we created is able to collect data from a gas sensor (ideally the one created at AIME but we only tested with a groove MQ9 gas sensor) and send these data to the LoRa TTN gateway on the INSA’s rooftop. On the following figure, you can find a picture of our prototype:

![alt text](https://raw.githubusercontent.com/MOSH-Insa-Toulouse/2019_MOSH_PROJECT_JLTT/master/Screens/JLTT_Wiring.PNG "JLTT_Wiring")

### Dashboard

Then after creating a TTN application and registering our device, we used a ttn uplink node to receive the data sent to our TTN application. Finally, with some basic functions and chart blocs, we were able to display in a dashboard all the data in real time. You can find on the following figures the Node-Red flow and dashboard:

![alt text](https://raw.githubusercontent.com/MOSH-Insa-Toulouse/2019_MOSH_PROJECT_JLTT/master/Screens/JLTT_NodeRed.PNG "JLTT_NodeRed")

![alt text](https://raw.githubusercontent.com/MOSH-Insa-Toulouse/2019_MOSH_PROJECT_JLTT/master/Screens/JLTT_Dashboard.PNG "JLTT_Dashboard")

### Energy consumption

During our smart device realization, we studied the energy consumption in order to optimize it. We found that we were consuming 355mA and 370mA during an emission. That is why we chose to define a sleep cycle. Indeed, every 8 seconds, our smart device wake up, read the sensor value and send it to TTN. To realize this, we used an Arduino library by convenience and lack of time:

![alt text](https://raw.githubusercontent.com/MOSH-Insa-Toulouse/2019_MOSH_PROJECT_JLTT/master/Screens/JLTT_lowpower.PNG "JLTT_lowpower")

This sleep cycle allows a great reduction of energy consumption and an increasing of battery lifetime.

## KiCad

In this repository, you can find KiCad files of our project. We designed an Arduino shield based on the sensor we produced at the AIME laboratory. This shield is composed of the sensor, a buzzer, a NRF2483 LoRa ship and an adapter circuit for the gas sensor. You can see on the following figure the schematics we designed with KiCad:

![alt text](https://raw.githubusercontent.com/MOSH-Insa-Toulouse/2019_MOSH_PROJECT_JLTT/master/Screens/JLTT_PCB_Schematics.PNG "JLTT_PCB_Schematics")

After the schematics design, we exported the net file and realized the PCB routing that you can find with the following figures:

![alt text](https://raw.githubusercontent.com/MOSH-Insa-Toulouse/2019_MOSH_PROJECT_JLTT/master/Screens/JLTT_PCB_Routing_1.PNG "JLTT_PCB_Routing_1")

![alt text](https://raw.githubusercontent.com/MOSH-Insa-Toulouse/2019_MOSH_PROJECT_JLTT/master/Screens/JLTT_PCB_Routing_2.PNG "JLTT_PCB_Routing_2")

Finally, we exported a 3d representation of our shield thanks to KiCad:

![alt text](https://raw.githubusercontent.com/MOSH-Insa-Toulouse/2019_MOSH_PROJECT_JLTT/master/Screens/JLTT_3D_View.PNG "JLTT_3D_View")

## Conclusion

During this whole module, we were able to realize an electronic product from scratch. Indeed, from the sensor creation to the shield design and software programming, we had to mobilize several skills. Our team was composed of people with different background. That point helped us to dispatch the tasks and learn from the other experience.

To improve our project, we could for example design a PCB of a smaller size by using SMA instead of through-hole ones. Also, our PCB is only composed of the sensing and acting part of the device, a great think can be to integrate directly a micro-controller like an atmega328p in our PCB. The question of the battery and energy harvesting can be also asked and finally, we can as dashboard a different technology instead of Node-Red which is quite limiting.

To conclude, the whole process of sensor creation at the AIME, the PCB design with KiCad and the building of smart device during the MOSH module was a really interesting project related to IOT.
