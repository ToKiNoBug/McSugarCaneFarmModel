gtNum=uint32(10000);
gtInterval=uint32(20);
recordNum=gtNum/gtInterval;

record=zeros(48,recordNum);

w=uint32(1);

curDist=zeros(48,1);
curDist(1)=1;

for gt=1:gtNum
    curDist=DistributionIter(curDist);
    if mod((gt-1),gtInterval)==0
        record(:,w)=curDist;
        w=w+1;
        if(w>recordNum)
            break;
        end
    end
end