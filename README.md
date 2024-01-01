# Greenhouse-CO2-Controller
This is a school project, a system to control CO2 supply into the greenhouse.

Greenhouse CO2 Controller Documentation

Tasks
The program consists of three main tasks. Data between tasks are shared with queues. Two of queues are used as mailboxes where one task just updates values and other tasks read current value.

Initialization task
This task has the highest priority, and it is run only once.
Load system’s values from EEPROM and validate them.
Initialize mailboxes with values from EEPROM or default values.

Control task
Measure temperature, humidity and CO2 values.
Control valve.
Update system’s status to system status mailbox 
Receive new CO2 setpoints from queue.

Menu task
Handle events sent to menu and update display.
Update WIFI SSID, password and MQTT broker values in network information mailbox when user enters new values.
Save new values to EEPROM.

MQTT task
Send system’s status to MQTT broker periodically.
Receives values from network information mailbox.

Input
Users can interact with the system by using the rotary encoder. Rotation from encoder is handled with LPC1549’s Quadrature Encoder Interface peripheral which is configured to raise interrupt when user rotates encoder. Events are sent to event queue in interrupt handler based on the direction.
Button pressed are handled with GPIO interrupts. In interrupt handler, software timer is started which executes after 20ms. If the button is still pressed, the event is sent to queue. This timer and delay are used to get rid of button bouncing which causes multiple interrupts.
Menu tasks gets event from queue and sends them to menu which is implemented as state machine. When one of the values is changed, the menu calls callback function which is given to it when menu objects are created. New values are then saved to EEPROM. Numerical values are saved twice, once as normal value and once as inverted value. This allows us to verify that values read from EEPROM are valid. With text input, CRC is calculated over text, and this is also saved in EEPROM so text values read from EEPROM can be validated. 16-bit CRC is calculated using LPC1549’s own CRC engine

Greenhouse CO2 Controller User Manual

Introduction
This manual provides instructions for operating the Greenhouse CO2 Controller using the local user interface. This system uses a rotary encoder, a CO2 probe (GMP252), a Relative Humidity and Temperature Sensor (HMP60) and a solenoid valve to control the CO2 levels in the greenhouse.

Components
CO2 Probe (GMP252): Measures the CO2 level in the greenhouse
Humidity and Temperature Sensor (HMP60): Monitors the relative humidity and temperature in the greenhouse
Rotary Encoder: Used to enter the MQTT Broker, WiFi SSID and password, and to set the CO2 set point. The encoder has a button, which selects/deselects an item on pressing and it can be rotated clockwise or counterclockwise to move to the right or left within the texts respectively.
Solenoid valve: Controls the flow of CO2 into the greenhouse.
LCD display: Used for local user interface display

Setting Up
WiFi Setup: Use the rotary encoder to enter MQTT Broker, Wifi SSID and password. This will connect the system to cloud service (ThingSpeak) using MQTT for remote monitoring and control.
Set Point Setup: Use the rotary encoder to set the desired CO2 level (the set point). When the CO2 level in the greenhouse falls below this set point, the solenoid valve will open.

Operation
When the CO2 level in the greenhouse falls below the set point, the solenoid valve will open, allowing CO2 to flow into the greenhouse.
The valve will stay open for 2 seconds, then closes automatically.
To prevent rapid cycling, the valve will not open again for at least the next 10 seconds.

Safety
Please ensure that the greenhouse is well ventilated. High CO2 levels can be harmful to both plants and humans.
