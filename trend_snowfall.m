file='adaptor.mars.internal-1612344041.933236-15471-21-a7b2ac41-ef67-4cb6-af1c-fd1f14f953ca.nc' % .NetCDF file - 3D Matrix - 321 X 141 X 479
ncdisp(file);
snowfall = ncread(file,'sf'); %read
trd2 = zeros(321,141); %zeroes matrix
confidence2 = zeros(321,141); %zeroes matrix
for i = 1:321 %longitude
    for j = 1:141 %latitude
mat1 = snowfall(i,j,:);  % keeping lat long constant , varying temporally
mat2 = mat1(:);
t = 1:479;
ti = t.';
[r,p] = corr(mat2,ti,'type','pearson') %caculating pearson correlation
trd2(i,j) = r; %correlation value
confidence2(i,j) = p; %confidence value 
    end
end