[y,fs] = audioread("song.wav");

%脉冲响应波形图
subplot(321);
x1 = ((0:1:length(h)-1)/fs)';
y1 = h;
plot(x1,y1);
xlabel("时间/s");
ylabel("幅值");
title("脉冲响应波形图");
grid on;

%脉冲响应幅频图
subplot(322);
x2 = ((0:1:length(h)-1)*fs/length(h))';
y2 = fft(h);
y2_m = abs(y2);
plot(x2,y2_m);
xlabel("频率/HZ");
ylabel("幅值");
title("脉冲响应幅频图");
grid on;

%原始信号波形图
subplot(323);
x3 = ((0:1:length(y)-1)/fs)';
y3 = y;
plot(x3,y3);
xlabel("时间/s");
ylabel("幅值");
title("原始信号波形图");
grid on;

%原始信号幅频图
subplot(324);
x4 = ((0:1:length(y)-1)*fs/length(y))';
y4 = fft(y);
y4_m = abs(y4);
plot(x4,y4_m);
xlabel("频率/HZ");
ylabel("幅值");
title("原始信号幅频图");
grid on;

%卷积信号波形图
subplot(325);
y5 = conv(y,h);
x5 = ((0:1:length(y5)-1)/fs)';
plot(x5,y5);
xlabel("时间/s");
ylabel("幅值");
title("卷积信号波形图");
grid on;

%卷积信号幅频图
subplot(326);
x6 = ((0:1:length(y5)-1)*fs/length(y5))';
y6 = fft(y5);
y6_m = abs(y6);
plot(x6,y6_m);
xlabel("频率/HZ");
ylabel("幅值");
title("卷积信号幅频图");
grid on;

%播放原始信号声音
sound(y,fs);

pause(10);

%播放在房间中采集到的信号
sound(y5,fs);





