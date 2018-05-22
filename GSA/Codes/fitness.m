%% function to provide  the fitness of an Agent

function fit=fitness(Agent,f_sel,dim)

%% f_sel    : determines function to be fitted
%% dim      : dimension of test function
%% Agent    : agent whose fitness is calculated
%% fit      : vector containing fitness values of agent

if f_sel==1
fit=sum(Agent.^2);
end

if f_sel==2
fit=sum(abs(Agent))+prod(abs(Agent));
end

if f_sel==3
    fit=0;
    for i=1:dim
    fit=fit+sum(Agent(1:i))^2;
    end
end

if f_sel==4
    fit=max(abs(Agent));
end

if f_sel==5
    fit=sum(100*(Agent(2:dim)-(Agent(1:dim-1).^2)).^2+(Agent(1:dim-1)-1).^2);
end

if f_sel==6
    fit=sum(floor((Agent+.5)).^2);
end

if f_sel==7
    fit=sum([1:dim].*(Agent.^4))+rand;
end

if f_sel==8
    fit=sum(-Agent.*sin(sqrt(abs(Agent))));
end

if f_sel==9
    fit=sum(Agent.^2-10*cos(2*pi.*Agent))+10*dim;
end

if f_sel==10
    fit=-20*exp(-.2*sqrt(sum(Agent.^2)/dim))-exp(sum(cos(2*pi.*Agent))/dim)+20+exp(1);
end

if f_sel==11
    fit=sum(Agent.^2)/4000-prod(cos(Agent./sqrt([1:dim])))+1;
end

if f_sel==12
    fit=(pi/dim)*(10*((sin(pi*(1+(Agent(1)+1)/4)))^2)+sum((((Agent(1:dim-1)+1)./4).^2).*...
        (1+10.*((sin(pi.*(1+(Agent(2:dim)+1)./4)))).^2))+((Agent(dim)+1)/4)^2)+sum(Ufun(Agent,10,100,4));
end
if f_sel==13
    fit=.1*((sin(3*pi*Agent(1)))^2+sum((Agent(1:dim-1)-1).^2.*(1+(sin(3.*pi.*Agent(2:dim))).^2))+...
        ((Agent(dim)-1)^2)*(1+(sin(2*pi*Agent(dim)))^2))+sum(Ufun(Agent,5,100,4));
end

if f_sel==14
aS=[-32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32;,...
-32 -32 -32 -32 -32 -16 -16 -16 -16 -16 0 0 0 0 0 16 16 16 16 16 32 32 32 32 32];
    for j=1:25
        bS(j)=sum((Agent'-aS(:,j)).^6);
    end
    fit=(1/500+sum(1./([1:25]+bS))).^(-1);
end

if f_sel==15
    aK=[.1957 .1947 .1735 .16 .0844 .0627 .0456 .0342 .0323 .0235 .0246];
    bK=[.25 .5 1 2 4 6 8 10 12 14 16];bK=1./bK;
    fit=sum((aK-((Agent(1).*(bK.^2+Agent(2).*bK))./(bK.^2+Agent(3).*bK+Agent(4)))).^2);
end

if f_sel==16
    fit=4*(Agent(1)^2)-2.1*(Agent(1)^4)+(Agent(1)^6)/3+Agent(1)*Agent(2)-4*(Agent(2)^2)+4*(Agent(2)^4);
end

if f_sel==17
    fit=(Agent(2)-(Agent(1)^2)*5.1/(4*(pi^2))+5/pi*Agent(1)-6)^2+10*(1-1/(8*pi))*cos(Agent(1))+10;
end

if f_sel==18
    fit=(1+(Agent(1)+Agent(2)+1)^2*(19-14*Agent(1)+3*(Agent(1)^2)-14*Agent(2)+6*Agent(1)*Agent(2)+3*Agent(2)^2))*...
        (30+(2*Agent(1)-3*Agent(2))^2*(18-32*Agent(1)+12*(Agent(1)^2)+48*Agent(2)-36*Agent(1)*Agent(2)+27*(Agent(2)^2)));
end

if f_sel==19
    aH=[3 10 30;.1 10 35;3 10 30;.1 10 35];cH=[1 1.2 3 3.2];
    pH=[.3689 .117 .2673;.4699 .4387 .747;.1091 .8732 .5547;.03815 .5743 .8828];
    fit=0;
    for i=1:4
    fit=fit-cH(i)*exp(-(sum(aH(i,:).*((Agent-pH(i,:)).^2))));
    end
end

if f_sel==20
    aH=[10 3 17 3.5 1.7 8;.05 10 17 .1 8 14;3 3.5 1.7 10 17 8;17 8 .05 10 .1 14];
cH=[1 1.2 3 3.2];
pH=[.1312 .1696 .5569 .0124 .8283 .5886;.2329 .4135 .8307 .3736 .1004 .9991;...
.2348 .1415 .3522 .2883 .3047 .6650;.4047 .8828 .8732 .5743 .1091 .0381];
    fit=0;
    for i=1:4
    fit=fit-cH(i)*exp(-(sum(aH(i,:).*((Agent-pH(i,:)).^2))));
    end
end

aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6];
cSH=[.1 .2 .2 .4 .4 .6 .3 .7 .5 .5];

if f_sel==21
    fit=0;
  for i=1:5
    fit=fit-((Agent-aSH(i,:))*(Agent-aSH(i,:))'+cSH(i))^(-1);
  end
end

if f_sel==22
    fit=0;
  for i=1:7
    fit=fit-((Agent-aSH(i,:))*(Agent-aSH(i,:))'+cSH(i))^(-1);
  end
end

if f_sel==23
    fit=0;
  for i=1:10
    fit=fit-((Agent-aSH(i,:))*(Agent-aSH(i,:))'+cSH(i))^(-1);
  end
end

function y=Ufun(x,a,k,m)
y=k.*((x-a).^m).*(x>a)+k.*((-x-a).^m).*(x<(-a));
return
