%un cycle de cherge-décharge
function d_epsilon=cycle_c(N)

d_epsilon=zeros(1,N);
d_epsilon(1)=0.1;
for  i=2:N
if i<N/3
  d_epsilon(i)=d_epsilon(1);
elseif  i>2*N/3 
        d_epsilon(i)= d_epsilon(1);
 else
        d_epsilon(i)=-d_epsilon(1);
        
end
end
end