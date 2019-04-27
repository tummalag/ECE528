%   1.c
function x= my_bernoulli(p,N,a,b);

x=rand(1,N);

if or(a,b)==0
   if a>b
        x(x<(1-p))=b;
        x(x>=(1-p))=a;
        x
        hist(x);
   elseif a<b
        x(x<(p))=a;
        x(x>=(p))=b;
        x
        hist(x);
   else
    display('Not a bernoulli Random variable');
   end
   
else
    if a>b
        x(x>=(1-p))=a;
        x(x<(1-p))=b;
        x
        hist(x);
    elseif a<b
        x(x>=(p))=b;
        x(x<(p))=a;
        x
        hist(x);
    else
        display('Not a bernoulli Random variable');
   end
    
end
