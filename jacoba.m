function J_a = jacoba(S,M,q)    
    J_s = jacob0(S, q);
    
    T = fkine(S,M, q, 'space');
    p = T(1: 3, 4);
    so3mat = [0, -p(3), p(2); p(3), 0, -p(1); -p(2), p(1), 0];
    
    J_a = J_s(4:6,:) - so3mat*J_s(1:3,:);
end