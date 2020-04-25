a=6;
sampled= randi(1,10000);
quantized2=zeros(1,length(sampled));
quantized4=zeros(1,length(sampled));
quantized8=zeros(1,length(sampled));
L=[2 4 8];

quantizer(sampled,2,a)
function [quantized, qerror,varp,varth,sqnrp,sqnrth] = quantizer(sampled,L,a)
delta=(2*a)/l;
Xs= -a:delta:a;
Xq = -a+(delta/2):delta:a-(delta/2);
for i=1:length(sampled)
    for j=1:length(Xs)-1
        if sampled(i)>=Xs(j) && sampled(i)<Xs(j+1)
            quantized(i)=Xq(j);
            
            

        end
    end

end

error = quantized - sampled;
qerror = mean(abs(error));
varp= var(error);
varth= (delta^2)/12;
sqnrp= (a^2)/varp;
sqnrth = 3*(L^2)

return
end