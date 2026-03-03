rawRed = csvread('Red Normalized Raw Lut 2024.csv');
rawGreen = csvread('Green Normalized Raw Lut 2024.csv');
rawBlue = csvread('Blue Normalized Raw Lut 2024.csv');

redFilt = (1/16)*ones(1,16);
greenFilt = (1/16)*ones(1,16);
blueFilt = (1/16)*ones(1,16);

filteredRed = filter(redFilt,1,rawRed);
filteredGreen = filter(greenFilt,1,rawGreen);
filteredBlue = filter(blueFilt,1,rawBlue);

redInverse = zeros(1000,1,1);
greenInverse = zeros(1000,1,1);
blueInverse = zeros(1000,1,1);



for i=2:length(blueInverse)
    for j=2:length(filteredBlue)
        if filteredBlue(j) >= i*0.001
            m = filteredBlue(j) - filteredBlue(j-1);
            blueInverse(i) = ((i*0.001 - filteredBlue(j-1))/m) +(j-1);
            %blueInverse(i) = j;
            break;
        end
    end     
end

x = 1:length(filteredBlue);
figure(1)
plot(x,filteredBlue)

figure(2)
plot(x,rawBlue)

x = 1:length(blueInverse);
figure()
plot(x,blueInverse)


fuckedCount = 0;

for i = 2:length(filteredBlue)
    if filteredBlue(i) < filteredBlue(i-1)
        disp(i)
        fuckedCount = fuckedCount+1;
    end
end 


z = linspace(0,0.69,250);
z=transpose(z);
disp(fuckedCount)
