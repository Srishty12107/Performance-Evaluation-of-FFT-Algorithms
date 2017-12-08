%Srishty Saha
%Nitika Khurana
%Performance Evaluation of Cooley-Tukey FFT and Chirp Z-transform Algorithms on Audio Signals
%fetches mat file and plot graphs
plot(mse_fft(1:4));
hold on;
plot(mse_czt(1:4));
hold on;
plot(mse_radix_audio(1:4));
title({'MSE of audio 1(Radix2 vs FFT vs CZT)'})
xlabel('Frequency (hz)')
ylabel('MSE')
hold off;

plot(SNR_czt_audio(1:4));
hold on;
plot(SNR_fft_audio(1:4));
hold  on;
plot(SNR_radix2_audio(1:4));
title({'SNR of audio 1 signal (Radix 2 vs FFT vs CZT)'})
xlabel('Frequency (Hz)')
ylabel('SNR')
hold off;
