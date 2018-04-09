time = 0:.001:1;
sig = sin(2*pi*time);
%plot(time,sig)


time = (0:8192) / 8192;
tone1 = sin(2*pi*400*time);
%sound(tone1,8192);

spec = fft(tone1);
spec_centered = fftshift(spec);
freqs = -8192/2:8192/2;
%plot(freqs,abs(spec_centered));

time = (-4096:4096) / 8192;
sig = sinc(2*1000*time);
spec = fft(sig);
spec_centered = fftshift(spec);
freqs = -8192/2:8192/2;
plot(freqs,abs(spec_centered));

h = hann(8193)';
plot(h)

time = (-4096:4096) / 8192;
sig = sinc(2*1000*time);
spec = fft(sig .*h );
spec_centered = fftshift(spec);
freqs = -8192/2:8192/2;
plot(freqs,abs(spec_centered));
