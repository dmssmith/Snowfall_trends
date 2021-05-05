file4='Admin2.shp'    %shape file - Indian Boundary
%s = shaperead(file4)
openfig('r_snowfall_90.fig')  %opening image
hold on
xticks(65:2:97)      %labelling 
mapshow(s,'Facecolor','none')   %putting up boundary
savefig('r_snowfall_90b.fig')
end

