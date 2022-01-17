gtNum=uint32(100000);
gtInterval=uint32(1200);
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