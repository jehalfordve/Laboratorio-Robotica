q(1,:)=[0 0 0 0 0 0];
q(2,:)=[0 0 0 pi/2 pi -pi/3];
q(3,:)=[-pi/3 -pi/2 pi/2 0 0 0];
q(4,:)=[pi/4 0 pi -pi/3 pi/2 pi/4];
qsize=size(q);
for i=1:qsize(1)
    T(i)=bot1.fkine(q(i,:));
    tabdata(i,:)=[T(i).t' rad2deg(tr2rpy(T(i)))];
end
array2table(tabdata,'VariableNames',{'x', 'y', 'z', 'roll', 'pich', 'yaw'})