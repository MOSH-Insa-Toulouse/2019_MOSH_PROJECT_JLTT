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

<img src="C:\Users\thoma\Desktop\Thomas\INSA\5eme_Annee\MOSH_project\2019_MOSH_PROJECT_JLTT\Images" alt="Global_prototype">







<!-- Conso : 355mA (fonctionnement normal) et 370mA (fonctionnement en émission)

Il faut mettre un Nmos en Not Gate => Quand y'a un 0 le transistor est ouvert et le gaz sensor est relié à Vdd grâce à la résistance de pull-up, et quand on met 1 le transistor est passant et donc la tension aux bornes du Gaz sensor est amenée à 0. -->

