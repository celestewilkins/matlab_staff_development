function contacts = run_split(footContacts)
% split into stance phases for each limb based on the toe or heel contact
% given by xsens

% if the runner is heel striking, the heel contact will come before the toe
% contact. However, in acceleration toe contact is expected. Deceleration
% heel contact would be expected. 
l_heel = footContacts(1).footContacts; 
l_toe = footContacts(2).footContacts; 

r_heel = footContacts(3).footContacts; 
r_toe = footContacts(4).footContacts; 

l_heel = diff(l_heel); 
l_toe = diff(l_toe); 
r_heel = diff(r_heel); 
r_toe = diff(r_toe); 

% values of -1 indicate start of contact, values of 1 = end of contact
%odd numbers = start even numbers = end

%left heel start
strt = find(l_heel == 1); 
%left heel end
e = find(l_heel == -1); 
% we want to start with a 'start' value (it should naturally be a start
% value first, but a safety just in case) 
if strt(1) > e(1)
    e(1) = []; 
end
contacts.l_heel = sort(vertcat(strt,e));

%left toe start
strt = find(l_toe == 1); 
%left toe end
e = find(l_toe == -1); 
if strt(1) > e(1)
    e(1) = []; 
end
contacts.l_toe = sort(vertcat(strt,e));


%right heel start
strt = find(r_heel == 1); 
%left heel end
e = find(r_heel == -1); 
if strt(1) > e(1)
    e(1) = []; 
end
contacts.r_heel = sort(vertcat(strt,e));

%right toe start
strt = find(r_toe == 1); 
%left toe end
e = find(r_toe == -1); 
if strt(1) > e(1)
    e(1) = []; 
end
contacts.r_toe = sort(vertcat(strt,e));


end

