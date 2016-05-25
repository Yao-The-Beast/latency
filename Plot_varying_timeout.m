
load fanout_latency_long/256/16
X8 = X16;
load fanout_latency_long_longTimemout/256/16
X4 = X16;
load fanout_latency_long_mediumTimeout/256/16
X2 = X16;
load fanout_latency_long_shortTimeout/256/16
X_1 = X16;

X_1 = X_1 / 1000000;
X2 = X2 / 1000000 * 15;
X4 = X4 / 1000000 ;
X8 = X8/ 1000000;

fprintf('%d, %d, %d, %d\n', median(X_1), median(X2),median(X4),median(X8));

boxplot([X_1, X2, X4, X8], 'Labels',{'10','40','120','250'});
title('Fanout: 256');
ylim([0,270]);
xlabel('Output Buffer Timeout (ms)');
ylabel('Latency (ms)');