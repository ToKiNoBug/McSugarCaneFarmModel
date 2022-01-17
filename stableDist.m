function [dist,history,productHist] = stableDist(harvestInterval,harvestNum)
%STABLEDIST �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
history=zeros(48,harvestNum);
hN=uint32(1);
dist=zeros(48,1);
dist(1)=1;
productHist=zeros(1,harvestNum);
for gt=1:harvestNum*harvestInterval
    if mod(gt-1,harvestInterval)==0
        history(:,hN)=dist;
        productHist(hN)=1*sum(dist(17:32))+2*sum(dist(33:48));
        hN=hN+1;
        dist(1)=dist(1)+sum(dist(17:32));
        dist(17:32)=0;
        dist(1)=dist(1)+sum(dist(33:48));
        dist(33:48)=0;
        dist=dist/sum(dist);        
    end
    dist=DistributionIter(dist);
end
end

