# Performance-Evaluation-of-FFT-Algorithms

To run this project, you need to set up MATLAB. There are 3 audio input files in '.wav' format of duration 5 seconds, 1 min and 2 mins. You need to first provide the path to the audio file in wavread() in all the 3 files. Once, that is done, time taken to run the program will depend on the input that you are running.

main.m: This is the main file that needs to be run first. This file will calculate the FFT for different algorithms: Cooley Tukey FFT, Radix-2 Cooley Tukey and Bluestein's Chirp Z transform. It also calculates the time and space consumed for the algorithms.

spec.m: To generate spectrograms for the FFT of the algorithms under observation. The spectrogram displays the the fundamental frequencies present in the audio once FFT algorithm is applied.

graph.m: This file loads the main file and plot the graphs for Mean Square Error, Peak-Signal-to-Noise ratio and FFT for the algorithms for the three audio files.
