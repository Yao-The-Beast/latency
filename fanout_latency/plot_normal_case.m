load 256/64
load 256/32
load 256/16
load 256/8
load 256/4
load 256/2
load 256/-1

X_1 = X_1(1000:1999) / 1000000;
X2 = X2(1000:1999) / 1000000;
X4 = X4(1000:1999) / 1000000;
X8 = X8(1000:1999) / 1000000;
X16 = X16(1000:1999) / 1000000;
X32 = X32(1000:1999) / 1000000;
X64 = X64(1000:1999) / 1000000;

fprintf('%d, %d, %d, %d, %d, %d, %d\n', median(X_1), median(X2),median(X4),median(X8),median(X16),median(X32),median(X64));

boxplot([X_1, X2, X4, X8, X16, X32, X64], 'Labels',{'0','2','4','8','16','32','64'});
title('Fanout: 256');
xlabel('Output Buffer Size (msgs)');
ylabel('Latency (ms)');