%generates spectrogram of audio file
[y,fs] = audioread('C:/Users/Srishty Saha/Desktop/da/fft-python-master/input/audio.wav');
d=y;
clear data;
%%%%%%%%%%%%%%%%%%%%
%find peaks and valleys
%%%%%%%%%%%%%%%%%%%%%%%
i=1;
j=1;
p=[];%location of peaks and valleys
%q=[];%values of peaks and valleys

p(1)=1;
while(i<16384)
if(d(i+1)>d(i))&&(d(i+1)>d(i+2))%find peaks
 p(j+1)=i+1;
 j=j+1;
else
 if(d(i+1)<d(i))&&(d(i+1)<d(i+2))%find valley
 p(j+1)=i+1;
 %q(j+1)=d(i+1);
 j=j+1;
 end

end
i=i+1; 
end
p(j+1)=16384;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
len=max(diff(p));
N=length(p);
seg=zeros(len,N-1); % 2-D matrix of data segments
for n=1:N-1
 r=p(n+1)-p(n);
 seg((1:r),n)=d(p(n):(p(n+1)-1));
end

fftdata=abs(fft(seg,16384));

image(fftdata,'CDataMapping','scaled');

 set(gca,'YDir','normal')

 datacursormode on;

 title('Spectrogram');
 ylabel('Frequency-Hz');
 xlabel('Time -sec');
%Reference%
%https://www.scribd.com/document/166795487/Fft-Computation-and-Generation-of-Spectrogram%
