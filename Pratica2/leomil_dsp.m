clear all
close all

img = ones(112,144)*64;



astx=ones(16,16)*64;
astx(2:15,8:9)=1;
astx(8:9,3:14)=1;
astx(5,5)=1;
astx(6,6)=1;
astx(7,7)=1;
astx(10,10)=1;
astx(11,11)=1;
astx(12,12)=1;
astx(12,5)=1;
astx(11,6)=1;
astx(10,7)=1;
astx(7,10)=1;
astx(6,11)=1;
astx(5,12)=1;

num0=ones(16,16)*64;
num0(12,4)=1;
num0(11,5)=1;
num0(10,6)=1;
num0(9,7)=1;
num0(8,8)=1;
num0(7,9)=1;
num0(6,10)=1;
num0(5,11)=1;
num0(4,12)=1;
num0(4,4)=1;
num0(3,5)=1;
num0(3,12)=1;
num0(4,13)=1;
num0(13,4)=1;
num0(14,5)=1;
num0(2,6:11)=1;
num0(15,6:11)=1;
num0(5:12,3)=1;
num0(5:12,14)=1;
num0(14,12)=1;
num0(13,13)=1;

num1=ones(16,16)*64;
num1(3,7:9)=1;
num1(3:13,10)=1;
num1(14,7:12)=1;

num2=ones(16,16)*64;
num2(3,4:13)=1;
num2(4:8,13)=1;
num2(9,4:13)=1;
num2(10:14,4)=1;
num2(15,4:13)=1;

num3=ones(16,16)*64;
num3(3,5:13)=1;
num3(4:8,13)=1;
num3(9,5:13)=1;
num3(10:14,13)=1;
num3(15,5:13)=1;

num4=ones(16,16)*64;
num4(2:9,4)=1;
num4(2:15,13)=1;
num4(9,5:12)=1;

num5=ones(16,16)*64;
num5(3,4:13)=1;
num5(9,4:13)=1;
num5(15,4:13)=1;
num5(4:8,4)=1;
num5(10:14,13)=1;

num6=ones(16,16)*64;
num6(2:15,4)=1;
num6(2,5:13)=1;
num6(9,5:13)=1;
num6(9:15,13)=1;
num6(15,5:13)=1;

num7=ones(16,16)*64;
num7(2,4:13)=1;
num7(3:15,13)=1;

num8=ones(16,16)*64;
num8(2,5:12)=1;
num8(8,5:12)=1;
num8(15,5:12)=1;
num8(3:7,4)=1;
num8(3:7,13)=1;
num8(9:14,4)=1;
num8(9:14,13)=1;

num9=ones(16,16)*64;
num9(2,4:13)=1;
num9(8,4:12)=1;
num9(3:7,4)=1;
num9(3:15,13)=1;
num9(15,4:12)=1;







figure(1);
colormap(gray);
image(num0);
axis image

figure(2);
colormap(gray);
image(num1);
axis image

figure(3);
colormap(gray);
image(num2);
axis image

figure(4);
colormap(gray);
image(num3);
axis image

figure(5);
colormap(gray);
image(num4);
axis image

figure(6);
colormap(gray);
image(num5);
axis image

figure(7);
colormap(gray);
image(num6);
axis image

figure(8);
colormap(gray);
image(num7);
axis image

figure(9);
colormap(gray);
image(num8);
axis image

figure(10);
colormap(gray);
image(num9);
axis image

figure(11);
colormap(gray);
image(astx);
axis image


figure(12);
colormap(gray);
image(img);
axis image



