function [newDist] = DistributionIter(dist)
%DISTRIBUTIONITER 此处显示有关此函数的摘要
%   此处显示详细说明
rndTickRate=3/4096;
%newDist=dist*0;
ddist=zeros(48,1);
ddist(2:48)=dist(1:47)*rndTickRate;
ddist(1:47)=ddist(1:47)-dist(1:47)*rndTickRate;
newDist=dist+ddist;
newDist=newDist/(sum(newDist));
end

