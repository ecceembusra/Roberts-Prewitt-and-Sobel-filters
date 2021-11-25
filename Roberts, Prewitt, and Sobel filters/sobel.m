clear all,clc,close all
EL=imread('goruntu12.jpg');
DIPXE=imread('DIPXE.jpg');
Sobelmask1=PreSob(EL,2);
Sobelmask2=PreSob(DIPXE,2);
subplot(2,3,3),imshow(Sobelmask1);title('EL-Sobel maskes›');
subplot(2,3,6),imshow(Sobelmask2);title('DIPXE-Sobel maskesi');