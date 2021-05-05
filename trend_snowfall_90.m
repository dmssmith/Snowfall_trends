trd_sep4 = zeros(321,141) %zeroes matrix
for i = 1:321             %longitude
    for j = 1:141         %latitude 
        if confidence2(i,j)<=0.1      % for p<=0.1 (confidence value>90%)
             %disp(i);
             %disp(j);
             disp(trd1(i,j));  %displaying such r values
                  trd_sep4(i,j)=trd2(i,j);  % reading in new matrix
        end
    end
end
map = pcolor(lon,lat,trd_sep4.') %heat plot
map.EdgeAlpha = 0
colorbar
xlabel('Longitude')
ylabel('Latitude')
legend('r-snowfall, p<0.1')
saveas(map,'r_snowfall_90.fig')