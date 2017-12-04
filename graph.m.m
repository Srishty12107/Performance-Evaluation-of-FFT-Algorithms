plot(SNR_czt_audio(1:4));
hold on;
plot(SNR_czt_audi1(1:4));
hold on;
plot(SNR_czt_audi2(1:4));
title({'SNR of audio signals (CZT)'})
xlabel('Frequency (Hz)')
ylabel('SNR')

hold off;

plot(SNR_fft_audio(1:4));
hold on;
plot(SNR_fft_audi1(1:4));
hold on;
plot(SNR_fft_audi2(1:4));
title({'SNR of audio signals (FFT)'})
xlabel('Frequency (Hz)')
ylabel('SNR')

hold off;


plot(SNR_czt_audio(1:4));
hold on;
plot(SNR_fft_audio(1:4));
title({'SNR of audio 1 signal (FFT vs CZT)'})
xlabel('Frequency (Hz)')
ylabel('SNR')

hold off;

plot(SNR_czt_audi1(1:4));
hold on;
plot(SNR_fft_audi1(1:4));
title({'SNR of audio 2 signal (FFT vs CZT)'})
xlabel('Frequency (Hz)')
ylabel('SNR')

hold off;

plot(SNR_czt_audi2(1:4));
hold on;
plot(SNR_fft_audi2(1:4));
title({'SNR of audio 3 signal (FFT vs CZT)'})
xlabel('Frequency (Hz)')
ylabel('SNR')

hold off;

plot(mse_czt(1:4));
hold on;
plot(mse_czt_2(1:4));
hold on;
plot(mse_czt_3(1:4));
title({'MSE of audio signals (CZT)'})
xlabel('Frequency (hz)')
ylabel('MSE')

hold off;

plot(mse_fft(1:4));
hold on;
plot(mse_fft_2(1:4));
hold on;
plot(mse_fft_3(1:4));
title({'MSE of audio signals (FFT)'})
xlabel('Frequency (hz)')
ylabel('MSE')

hold off;

plot(mse_fft(1:4));
hold on;
plot(mse_czt(1:4));
title({'MSE of audio 1(FFT vs CZT)'})
xlabel('Frequency (hz)')
ylabel('MSE')

plot(mse_fft_2(1:4));
hold on;
plot(mse_czt_2(1:4));
title({'MSE of audio 2 (FFT vs CZT)'})
xlabel('Frequency (hz)')
ylabel('MSE')

plot(mse_fft_3(1:4));
hold on;
plot(mse_czt_3(1:4));
title({'MSE of audio 3 (FFT vs CZT)'})
xlabel('Frequency (hz)')
ylabel('MSE')
