#Calibration info

The process for calibrating the laser amplifier to remove non-linearity is explained below:

1. Shine the laser at a uniformly reflective surface using a pattern that exposes as much of the camera sensor as possible to prevent overexposure or saturation of the sensor.
1. Record the intensity of the light output across a ramp of control signals from 0V - 5V with a resolution of 5 mV per step (1000 steps), using a typical digital camera.
2. Extract the intensity of the respective colour channels from the recorded digital video (Calibration screeshot.png).
3. Invert the values and normalize them to a 0-1 scale.
4. Use these values as a lookup table for the control pre adjustment.
