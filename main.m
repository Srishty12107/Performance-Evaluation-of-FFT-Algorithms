[y,fs] = audioread('C:/Users/Srishty Saha/Desktop/da/fft-python-master/input/audi1.wav');
%plot(y,'f')
%sound(x,fs);
%s=y(1:16,:)
n = length(y(1:32));
FFTnew=[]
for i=1:n
   % n = length(y(1:10892));
    m = pow2(nextpow2(i));
    tic;
    FFTnew=fft(y,m);
    %F=FFnew
   % save FFTnew
    t=toc;
    save t;
    ifft_new=ifft(FFTnew);
   % save ifft_new
    %sound(ifft_new,fs);
    %tic;
    %radix_2= my_fft(y(2,2))
    %t2=toc;
    %save t2;
    %ifft_radix2=ifft(radix_2);
    f1 = 0;
    f2 = 400;
    w = exp(-j*2*pi*(f2-f1)/(m*fs));
    a = exp(j*2*pi*f1/fs);
    %z = czt(h,m,w,a);  
    tic;
    CZTnew = czt(y,m,w,a);
    save CZT_new
    t1=toc;
    save t1;
    inverse_czt=-czt(CZTnew);
    %sound(inverse_czt,fs);
    fn = (0:m-1)'/m;
    fy = fs*fn;
    fz = (f2-f1)*fn + f1;
    %s1=(y(1:m,:));
    SNR_fft(i)=psnr(y(1:i,:),ifft_new(1:i,:));
    save SNR_fft
    SNR_czt(i)=psnr(y(1:i,:),inverse_czt(1:i,:))
    save SNR_czt
    %SNR_radix=psnr(y(1:n,:),ifft_radix2(1:n,:))

    %subplot(3,1,1)
    %plot(fy,(FFTnew))

%     axis([0 1000 -500 500])
%     title('FFT')
%     xlabel('Frequency (Hz)')
%     ylabel('Amplitude (dB)')
%     subplot(3,1,2)
    %plot(fy,(radix_2))
%     axis([0 1000 -500 500])
%     title('radix_2 FFT')
%     xlabel('Frequency (Hz)')
%     ylabel('Amplitude (dB)')

    mse_fft(i)=immse(y(1:i,:),ifft_new(1:i,:))
    save mse_fft
    mse_czt(i)=immse(y(1:i,:),inverse_czt(1:i,:))
    save mse_czt
    %mse_radix=immse(y(1:n,:),ifft_radix2(1:n,:))

%     subplot(3,1,3)
%     plot(fz,(CZTnew))
%     axis([0 1000 -500 500])
%     title('CZT')
%     xlabel('Frequency (Hz)')
%     ylabel('Amplitude (dB)')
end
% subplot(4,1,3)
% f = (0:m-1)*(fs/m)/10; % frequency vector
% power = abs(FFTnew).^2/m;   % power spectrum      
% plot(f(1:floor(m)),power(1:floor(m)))
% xlabel('Frequency')
% ylabel('Power')
% subplot(4,1,4)
% power1=abs(CZTnew).^2/m;
% plot(fz(:,1),power1(:,1))
% xlabel('Frequency (Hz)')
% ylabel('Power')

plot(SNR_fft)
