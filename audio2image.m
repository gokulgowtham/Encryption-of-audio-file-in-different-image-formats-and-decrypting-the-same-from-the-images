[a,Fs]=audioread('C:\Users\gokul\OneDrive\Documents\MATLAB\ans_06.wav');
disp(Fs);
c=a;
D=c(1:200000);
for i=1:200000
    D(i)=(D(i)+1)/2;
end;
E=D;
len=length(c)
plot(D);
grid on
xlabel('audio samples');
ylabel('audio amplitude');
x=1;
y=2000;
A=zeros(100,2000);
for i=1:100
    L=D(x:y);
    N=L';
    A(i,:)=N;
    x=x+2000;
    y=y+2000;
end
imwrite(A,'C:\Users\gokul\OneDrive\Documents\MATLAB\new dspj\ensonicimg.jpeg'); 
imwrite(A,'C:\Users\gokul\OneDrive\Documents\MATLAB\new dspj\ensonicimg.tif');
imwrite(A,'C:\Users\gokul\OneDrive\Documents\MATLAB\new dspj\ensonicimg.png');
audiowrite('C:\Users\gokul\OneDrive\Documents\MATLAB\new dspj\generate dsfter sampling.wav',E,11025);
audiowrite('C:\Users\gokul\OneDrive\Documents\MATLAB\new dspj\original.wav',a,11025);
