# 2019_MOSH_PROJECT_JLTT : Kicad and Arduino LoraProject for SMART GAS sensor
> Loan Revardel / Jérémy Turi / Théo Zanchi / Thomas Lautrédou

#### <em> Key-words: </em> ```Arduino```, ```KiCad```, ```The Thing Network```, ```LoRa```, ```Node-RED```, ```IoT```, ```Gas sensor```.

This project was carried out as part of ISS (Innovative Smart Systems) 5th year at INSA Toulouse. The objective was to develop a gas sensor able to detect dangerous gases for human beings and communicating datas via Lora. Then, using the Node-RED software, we retrieved the data and displayed it on a graphical interface that the user could understand. As soon as a dangerous gas is detected, a buzzer is triggered to warn the user and avoid potential casualties. 

# Content of the Project

This repository contains : 
<ul>
<li><strong>KiCad files</strong> : We developed a shield for the gas sensor compatible with Arduino Uno (using <a href="http://kicad-pcb.org/">KiCad</a>) </li>
<li><strong>Arduino SW files</strong> : The source code we implemented on the microcontroller <a href="https://fr.rs-online.com/web/p/products/7589339?cm_mmc=FR-PLA-DS3A-_-google-_-CSS_FR_FR_(FR:Whoop!)+Semi-conducteurs_Control-_-(FR:Whoop!)+Kits+de+d%C3%A9veloppement+pour+processeurs+et+microcontr%C3%B4leurs-_-PRODUCT_GROUP&matchtype=&pla-391040009911&gclid=CjwKCAiAlO7uBRANEiwA_vXQ-7CN3iR2N3csU5tjIIjQNIGa3bsX8twG7D_S9v6flhEkI08b6nLumxoCnKcQAvD_BwE&gclsrc=aw.ds"> ATMEGA328 </a> (using <a href="https://www.arduino.cc/">Arduino IDE</a>)</li>
<li>A <strong>Node-RED dashboard</strong> to display datas retrieved from the gas sensor (using <a href="https://nodered.org/">Node-RED</a>)</li>
</ul>

# Overall components presentation
The goal of the project was to develop a prototype able to detect high dangerous gas concentration in a specific area. In this situation, a siren is triggered to alert people and avoid casualties. 

To do so, we used :
<ul>
<li>A <a href="https://store.arduino.cc/arduino-uno-rev3">Arduino Uno Board</a></li>
<li>A LoRa chip <a href="https://www.microchip.com/wwwproducts/en/RN2483">RN2483A</a></li>
<li>A <a href="http://wiki.seeedstudio.com/Grove-Gas_Sensor-MQ9/">Grove Gas Sensor (MQ9)</a></li>
<li>A potentiometer</li>
<li>A transistor <a href="http://www.vishay.com/docs/91291/91291.pdf">IRFZ44</a></li>
</ul>

![alt text](https://raw.githubusercontent.com/MOSH-Insa-Toulouse/2019_MOSH_PROJECT_JLTT/master/Screens/JLTT_Wiring.jpg "JLTT_Wiring")


### Dashboard

Then after creating a TTN application and registering our device, we used a ttn uplink node to receive the data sent to our TTN application. Finally, with some basic functions and chart blocs, we were able to display in a dashboard all the data in real time. You can find on the following figures the Node-Red flow and dashboard:

![alt text](https://raw.githubusercontent.com/MOSH-Insa-Toulouse/2019_MOSH_PROJECT_JLTT/master/Screens/JLTT_NodeRed.PNG "JLTT_NodeRed")

![alt text](https://raw.githubusercontent.com/MOSH-Insa-Toulouse/2019_MOSH_PROJECT_JLTT/master/Screens/JLTT_Dashboard.png "JLTT_Dashboard")

### Energy consumption

During our smart device realization, we studied the energy consumption in order to optimize it. We found that we were consuming 355mA and 370mA during an emission. That is why we chose to define a sleep cycle. Indeed, every 8 seconds, our smart device wake up, read the sensor value and send it to TTN. To realize this, we used an Arduino library by convenience and lack of time:

![alt text](https://raw.githubusercontent.com/MOSH-Insa-Toulouse/2019_MOSH_PROJECT_JLTT/master/Screens/JLTT_lowpower.PNG "JLTT_lowpower")

This sleep cycle allows a great reduction of energy consumption and an increasing of battery lifetime.

## KiCad

In this repository, you can find KiCad files of our project. We designed an Arduino shield based on the sensor we produced at the AIME laboratory. This shield is composed of the sensor, a buzzer, a NRF2483 LoRa ship and an adapter circuit for the gas sensor. You can see on the following figure the schematics we designed with KiCad:

![alt text](https://raw.githubusercontent.com/MOSH-Insa-Toulouse/2019_MOSH_PROJECT_JLTT/master/Screens/JLTT_PCB_Schematics.PNG "JLTT_PCB_Schematics")

After the schematics design, we exported the net file and realized the PCB routing that you can find with the following figures:

![alt text](https://raw.githubusercontent.com/MOSH-Insa-Toulouse/2019_MOSH_PROJECT_JLTT/master/Screens/Screen_Kicad_final.PNG "JLTT_PCB_Routing_1")

![alt text](https://raw.githubusercontent.com/MOSH-Insa-Toulouse/2019_MOSH_PROJECT_JLTT/master/Screens/Screen_Kicad_final_2.PNG "JLTT_PCB_Routing_2")

Finally, we exported a 3d representation of our shield thanks to KiCad:

![alt text](https://raw.githubusercontent.com/MOSH-Insa-Toulouse/2019_MOSH_PROJECT_JLTT/master/Screens/JLTT_3D_View.png "JLTT_3D_View")

## Conclusion

During this whole module, we were able to realize an electronic product from scratch. Indeed, from the sensor creation to the shield design and software programming, we had to mobilize several skills. Our team was composed of people with different background. That point helped us to dispatch the tasks and learn from the other experience.

To improve our project, we could for example design a PCB of a smaller size by using SMD instead of through-hole ones. Also, our PCB is only composed of the sensing and acting part of the device, a great think can be to integrate directly a micro-controller like an atmega328p in our PCB. The question of the battery and energy harvesting can be also asked and finally, we can use, to develop the dashboard, a different technology instead of Node-Red which is quite limiting.

To conclude, the whole process of sensor creation at the AIME, the PCB design with KiCad and the building of smart device during the MOSH module was a really interesting project related to IOT.
