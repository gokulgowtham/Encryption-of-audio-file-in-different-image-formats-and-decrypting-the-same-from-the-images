soundjpg=imread('C:\Users\gokul\OneDrive\Documents\MATLAB\new dspj\ensonicimg.jpeg');
soundtif=imread('C:\Users\gokul\OneDrive\Documents\MATLAB\new dspj\ensonicimg.tif');
soundpng=imread('C:\Users\gokul\OneDrive\Documents\MATLAB\new dspj\ensonicimg.png');
soundjpg=im2double(soundjpg);
soundtif=im2double(soundtif);
soundpng=im2double(soundpng);
filename1='soundJPEG.wav';
filename2='soundPNG.wav';
filename3='soundTIG.wav';
%Fs=11025;
JPEG=[;];
TIF=[;];
PNG=[;];

for i=1:100
    w=soundjpg(i,:);
    m=w';
    JPEG=vertcat(JPEG,m);
    
end
plot(JPEG)
audiowrite(filename1,JPEG,Fs);
i=1;
for i=1:100
    w=soundpng(i,:);
    m=w';
    PNG=vertcat(PNG,m);
    PNG=double(PNG);
    
end
audiowrite(filename2,PNG,Fs);
i=1;
for i=1:100
    w=soundtif(i,:);
    m=w';
    TIF=vertcat(TIF,m);
    TIF=double(TIF);
end
audiowrite(filename3,TIF,Fs);
plot(D)
hold on
figure
subplot(2,3,1)
plot(D,JPEG)
xlabel('Original samples')
ylabel('JPEG format')
subplot(2,3,2)
plot(D,TIF)
xlabel('original samples')
ylabel('TIF format')
subplot(2,3,3)
plot(D,PNG)
xlabel('original samples')
ylabel('PNG format')
subplot(2,3,4)
plot(JPEG)
xlabel('JPEG Samples')
ylabel('Amp')
subplot(2,3,5)
plot(TIF)
xlabel('TIF Samples')
ylabel('Amp')
subplot(2,3,6)
plot(PNG)
xlabel('PNG Samples')
ylabel('Amp')
Cjpeg=corrcoef(D,JPEG)
Ctif=corrcoef(D,TIF)
Cpng=corrcoef(D,PNG)


