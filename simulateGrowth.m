function [dist] = simulateGrowth(dist,gtNum,doHarvestBefore)
%SIMLATE �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
if(doHarvestBefore)
    dist(1)=dist(1)+sum(dist(17:48));
    dist(17:48)=0;
    dist=dist/sum(dist);
end
for i=1:gtNum
   dist=DistributionIter(dist);
end
end

