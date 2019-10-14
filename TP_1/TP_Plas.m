%Algorithme de retour radical
N=1000;
E=1;          %E = 1 MPa
sigma_y=2;    %sigma_y = 2 MPa
epsilon_p=zeros(1,N);
epsilon=zeros(1,N);
sigma=zeros(1,N);
sigma(1)=0;
epsilon_p(1)=0;
epsilon(1)=0;

% epsilon : positive-charge , négative-décharge
d_epsilon=charge_decharge(N);


%2.c un cycle
% 2.c. un cycle de charge-décharge en traction-compression
%d_epsilon=cycle_c(N);

%2.d cycle  de traction d'amplitude croissante
%d_epsilon=amplitude(N);

 for i=1:N-1    
epsilon(i+1)=epsilon(i)+d_epsilon(i) ;
sigma_pred=E*(epsilon(i+1)-epsilon_p(i));
f_pred= abs(sigma_pred)-sigma_y;

 if (f_pred < 0) %élastique
    lambda=0;
    epsilon_p(i+1)=epsilon_p(i);
    sigma(i+1)=sigma_pred;
 else
     lambda=f_pred/E;
     epsilon_p(i+1)=epsilon_p(i)+sign(sigma_pred)*lambda;
     sigma(i+1)=E*(epsilon(i+1)-epsilon_p(i+1));
 end
 end

%plot(sigma_pred,f_pred);

% % 2.a.
% subplot(131);
% plot(epsilon,sigma)  ;
% 
% % 2.b. charge-décharge en traction  epsilon=0   70ème=0(y=0)
% %plot(epsilon(1:70),sigma(1:70));
% 
% xlabel("\epsilon");ylabel("\sigma");
% %ylim([-3 3]) 
% 
% subplot(132);
% plot(epsilon,epsilon_p)  ;
% %ylim([-3 3])
% xlabel("\epsilon");ylabel("\epsilon_p");
% subplot(133);
% plot(epsilon_p,sigma)  ;
% xlabel("\epsilon_p");ylabel("\sigma")
% %ylim([-3 3])         %limit y-axis

% %plot(epsilon,E);







