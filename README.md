# ILDA-Spec-Laser-Projector-(Legacy)
A homemade analog amplifier for each red, green, and blue channel for use in a typical laser show projector, which is compatible with ILDA specified channel brightness control signals (0V-5V).

This device was built due to an abscence of commercially available devices at the time. The current-controlled nature of laser diodes suggests that specific gains are needed for any laser diode based on its electrical characteristics. I.e. any amplifier must be specifically designed for the particular laser diode intended to be used.

Non-linearaties were corrected experimentally by measuring the optical output of each colour channel for the full range of control signal values, inverting the measurements, and then feeding them back in as a control pre-adjustment. Further details and calibration data are included in the folder marked calibration.

The device has a combined optical output power of about 1.5W and a scanner resolution of at least 10,000 points per second.
