[y,fs] = audioread('C:/Users/Srishty Saha/Desktop/da/fft-python-master/input/audio.wav');
%plot(y,'f')
%sound(x,fs);
%s=y(1:16,:)
n = length(y(1:1024));
%FFTnew=[]
for i=1:n
   % n = length(y(1:10892));
    m = pow2(nextpow2(i));
    tic;
    FFTnew_audi2=fft(y);
    %F=FFnew
   % save FFTnew
    t_3=toc;
    save t_3;
    FFT_mem_audi2(i)= memory;
    save FFT_mem_audi2;
    ifft_new_audi2=ifft(FFTnew_audi2);
    %radix2=FFT_DIT_R2(y(1:m));
    %ifft_radix2=ifft(radix2);
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
    CZTnew_audi2 = czt(y,m,w,a);
    save CZT_new_audi2;
    t1_3=toc;
    save t1_3;
    CZT_mem_audi2(i)=memory;
    save CZT_mem_audi2;
    inverse_czt_audi2=-czt(CZTnew_audi2);
    %sound(inverse_czt,fs);
    fn = (0:m-1)'/m;
    fy = fs*fn;
    fz = (f2-f1)*fn + f1;
    %s1=(y(1:m,:));
    SNR_fft_audi2(i)=psnr(y(1:i,:),ifft_new_audi2(1:i,:));
    save SNR_fft_audi2;
    SNR_czt_audi2(i)=psnr(y(1:i,:),inverse_czt_audi2(1:i,:));
    save SNR_czt_audi2;
   % SNR_radix(i)=psnr(y(1:i,:),ifft_radix2(1:i,:))
    %save SNR_radix;
   
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

    mse_fft_3(i)=immse(y(1:i,:),ifft_new_audi2(1:i,:));
    save mse_fft_3
    mse_czt_3(i)=immse(y(1:i,:),inverse_czt_audi2(1:i,:));
    save mse_czt_3
   % mse_radix(i)=immse(y(1:i,:),ifft_radix2(1:i,:))

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

%plot(SNR_fft)
