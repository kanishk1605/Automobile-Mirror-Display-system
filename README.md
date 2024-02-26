# Automobile-Mirror-Display-system

Implement an Automobile Display Mirror System on an FPGA board that takes four 8-bit data from four different sensors and displays the data at the output using the selector switches of the Multiplexer. Assume that the 8-bit output then goes to a display that converts the binary number to decimal.

Some cars come with a display above the car window mirror as shown below:
![image](https://github.com/kanishk1605/Automobile-Mirror-Display-system/assets/105859363/649bf213-80e1-4d96-be5b-cc8f9d5f1f04)


A driver can press a button named mode to select among displaying the average miles-per-gallon of the car and approximate miles remaining until the car runs out of gas.

Assume the car's central computer sends the data to display in four 8-bit binary numbers, T(temperature), A(Average mpg), I(Instantaneous mpg) and M(Miles remaining).
Each of them consists of 8 bits. Assume the display system has two additional inputs x and y, which always change according to the following sequences-00,01,10,11.

When xy=00, display T. When xy=01, display A. When xy=10, display I. When xy=10, display M.


We can design the display system using 8-bit 4x1 multiplexers as shown below:

![image](https://github.com/kanishk1605/Automobile-Mirror-Display-system/assets/105859363/13412cc6-1be4-44f8-8608-8414d05acb3b)

## Output-Explanation
