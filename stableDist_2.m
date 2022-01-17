function [dist] = stableDist_2(harvestInterval)
%STABLEDIST �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
distA=zeros(48,1);
distA(1)=1;
distB=distA;
diff=ones(48,1);
loop=uint64(0);
while(true)
    if (mod(loop,2)==0)
        distB=simulateGrowth(distA,harvestInterval,true);
    else
        distA=simulateGrowth(distB,harvestInterval,true);
    end
    diff=abs(distA-distB);
    loop=loop+1;
    if(sum(diff)<10^-7)
        break;
    end
end
dist=(distA+distB)/2;
disp(loop);
end


