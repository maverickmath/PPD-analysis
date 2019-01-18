function s = plotappd(tmax,vmax)

figure;
plot(vmax(1:end-1),vmax(2:end),'.');
hold on;
title('Peak to peak plot');
xlabel('y(i)');
ylabel('y(i+1)');
minv = min(vmax);
maxv = max(vmax);
axis([minv-.1*maxv maxv+.1*maxv minv-.1*maxv maxv+.1*maxv]);
x = minv-.1*maxv:.1:maxv+.1*maxv;
plot(x,x);

rt = [];

for i=2:length(tmax)
    
    rt = [rt; tmax(i)-tmax(i-1)];
    
end;

figure;
plot(rt(1:end-1),rt(2:end),'.');
hold on;
title('Return times plot');
xlabel('T(i)');
ylabel('T(i+1)');
minr = min(rt) ;
maxr = max(rt);
axis([minr-.1*maxr maxr+.1*maxr minr-.1*maxr maxr+.1*maxr]);
x = minr-.1*maxr:.1:maxr+.1*maxr;
plot(x,x);



s = 0;
