# 2019_MOSH_PROJECT_JLTT : Kicad and Arduino LoraProject for SMART GAS sensor
> Loan Revardel / Jérémy Turi / Théo Zanchi / Thomas Lautrédou

#### <em> Key-words: </em> ```Arduino```, ```KiCad```, ```The Thing Network```, ```LoRa```, ```Node-RED```, ```IoT```, ```Gas sensor```.

This project was carried out as part of ISS (Innovative Smart Systems) 5th year at INSA Toulouse. The objective was to develop a gas sensor able to detect dangerous gases for human beings and communicating datas via Lora. Then, using the Node-RED software, we retrieved the data and displayed it on a graphical interface that the user could understand. As soon as a dangerous gas is detected, a buzzer is triggered to warn the user and avoid potential casualties. 

# Content of the Project

This repository contains : 
<ul>
<li><strong>KiCad files</strong> : We developed a shield for the gas sensor compatible with Arduino Uno (using <a href="http://kicad-pcb.org/">KiCad</a>) </li>
<li><strong>Arduino SW files</strong> : The source code we implemented on the microcontroller <a href="https://fr.rs-online.com/web/p/products/7589339?cm_mmc=FR-PLA-DS3A-_-google-_-CSS_FR_FR_(FR:Whoop!)+Semi-conducteurs_Control-_-(FR:Whoop!)+Kits+de+d%C3%A9veloppement+pour+processeurs+et+microcontr%C3%B4leurs-_-PRODUCT_GROUP&matchtype=&pla-391040009911&gclid=CjwKCAiAlO7uBRANEiwA_vXQ-7CN3iR2N3csU5tjIIjQNIGa3bsX8twG7D_S9v6flhEkI08b6nLumxoCnKcQAvD_BwE&gclsrc=aw.ds"> ATMEGA328 </a> (using <a href="https://www.arduino.cc/">Arduino IDE</a>)</li>
<li>A <strong>Node-RED dashboard</strong> to display datas retrieved from the gas sensor</li>
</ul>

Conso : 355mA (fonctionnement normal) et 370mA (fonctionnement en émission)

Il faut mettre un Nmos en Not Gate => Quand y'a un 0 le transistor est ouvert et le gaz sensor est relié à Vdd grâce à la résistance de pull-up, et quand on met 1 le transistor est passant et donc la tension aux bornes du Gaz sensor est amenée à 0. 

