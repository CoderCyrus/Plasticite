function d_epsilon=charge_decharge(N)


d_epsilon=zeros(1,N);
d_epsilon(1)=-0.01;

for i=2:N
if i<N/2
    d_epsilon(i)=d_epsilon(1);
else
    d_epsilon(i)= d_epsilon(1);
    
end
end
end

