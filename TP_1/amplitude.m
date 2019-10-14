%2.d amplitude crossante , puis décroissante
function d_epsilon=amplitude(N)
d_epsilon=zeros(1,N);
d_epsilon(1)=0.3;
% for i=2:N
% if i<N/2
%     d_epsilon(i+1)=d_epsilon(1)+d_epsilon(i);
%     
% else
%     d_epsilon(i+1)= -(d_epsilon(1)+d_epsilon(i));
%     
% end
% 
% end

% for  i=2:N
% if i<N/3
%   d_epsilon(i+1)=d_epsilon(1)+d_epsilon(i);
% elseif  i<2*N/3 
%     if d_epsilon(i+1)>0
%         d_epsilon(i+1)=-d_epsilon(1);
%     else
%         d_epsilon(i+1)=-d_epsilon(1)-d_epsilon(i);
%     end
%  else
%         d_epsilon(i+1)=3*d_epsilon(1)+d_epsilon(i);
%         
% end
% end
for i=2:N
if i<N/2
    d_epsilon(i)=d_epsilon(1);
else
    d_epsilon(i)= -(d_epsilon(1));
    
end
end


end
