data = readtable("Algerian_forest_fires_dataset_UPDATE.csv");

% Defining the Variable for Bejaia Region Dataset in 2012
dayfirstset = data(1:122,"day");
monthfirstset = data(1:122,"month");
temperaturefirstset = data(1:122,"Temperature");
isifirstset = data(1:122,"ISI");
buifirstset = data(1:122,"BUI");
fwifirstset = data(1:122,"FWI");
windspeedfirstset = data(1:122,"Ws");
classesfirstset = data(1:122,"Classes");
rainfirstset = data(1:122,"Rain");
relativehumfirstset = data(1:122,"RH");
%Converting the Bejaia variables to arrays
day1 = table2array(dayfirstset);
month1 = table2array(monthfirstset);
temp1 = table2array(temperaturefirstset);
isi1 = table2array(isifirstset);
bui1 = table2array(buifirstset);
fwi1 = table2array(fwifirstset);
cla1 = table2array(classesfirstset);
ws1 = table2array(windspeedfirstset);
rain1 = table2array(rainfirstset);
rh1 = table2array(relativehumfirstset);

%Defining the variables for Sidi-Bel Region dataset
daysecondset = data(125:245,"day");
monthsecondset = data(125:245,"month");
temperaturesecondset = data(125:245,"Temperature");
relativehumsecondset = data(125:245,"RH");
windspeedsecondset = data(125:245,"Ws");
rainsecondset = data(125:245,"Rain");
isisecondset = data(125:245,"ISI");
buisecondset = data(125:245,"BUI");
fwisecondset = data(125:245,"FWI");
clasecondset = data(125:245,"Classes");
%Row 168(171 in excel) must be ommited due to errors in the dataset
data(168,:)=[];
%Converting the Sidi Bel tables to an array
day2 = table2array(daysecondset);
month2 = table2array(monthsecondset);
temp2 = table2array(temperaturesecondset);
rh2 = table2array(relativehumsecondset);
ws2 = table2array(windspeedsecondset);
rain2 = table2array(rainsecondset);
isi2 = table2array(isisecondset);
bui2 = table2array(buisecondset);
fwi2 = table2array(fwisecondset);
cla2 = table2array(clasecondset);

% Factor Statistics for Bejaia Reigon
%Temperature statistics
mean(temp1);
mode(temp1);
range(temp1);
max(temp1);
min(temp1);
plot(month1,temp1);
median(temp1);
histogram(temp1);
u = isoutlier(temp1);
nnz(u);
find(u==1);
%Windspeed(km/h) statistics
mean(ws1);
max(ws1);
min(ws1);
range(ws1);
median(ws1);
mode(ws1);
histogram(ws1);
q = isoutlier(ws1);
nnz(q);
find(q==1);
%Rainfall(mm) Statistics
mean(rain1);
max(rain1);
min(rain1);
range(rain1);
mode(rain1);
median(rain1);
z = isoutlier(rain1);
nnz(z);
find(z==1);
histogram(rain1);
%Relative Humidity(%) Statistics in Bejaia Region
mean(rh1);
f = isoutlier(rh1);
nnz(rh1);
find(f==1);
mode(rh1);
median(rh1);
histogram(rh1);
max(rh1);
find(rh1==89);
min(rh1);
find(rh1==45);

% Factor Statistics for Sidi-Bel Reigon
%Temperature statistics for Sidi-Bel Region dataset
mean(temp2);
max(temp2);
find(temp2==42);
min(temp2);
find(temp2==24);
range(temp2);
median(temp2);
mode(temp2);
u1 = isoutlier(temp2);
nnz(u1);
find(u1==1);
% boxplot(temp2);
%Relative humidity(%) for sidi-Bel region dataset
mean(rh2);
max(rh2);
find(rh2==90);
min(rh2);
find(rh2==21);
range(rh2);
median(rh2);
mode(rh2);
f1 = isoutlier(rh2);
nnz(f1);
% boxplot(rh2);
%Windspeed(km/h)statistics for sidi-Bel region dataset
mean(ws2);
max(ws2);
find(ws2==29);
min(ws2);
find(ws2==6);
range(ws2);
median(ws2);
mode(ws2);
q1 = isoutlier(ws2);
nnz(q1);
find(q1==1);
% boxplot(ws2);
%Rainfall(mm) statistics for sidi-Bel region dataset
mean(rain2);
max(rain2);
find(rain2==8.7);
min(rain2);
find(rain2==0);
sum(rain2==0);
range(rain2);
median(rain2);
mode(rain2);
z1 = isoutlier(rain2);
nnz(z1);
find(z1==1);
% boxplot(rain2);


% Monthly Statistics for Bejaia Reigon
%Statistics for June 2012(Bejaia Region)
t = table();
t.dayfirstset = (1:1:30)';
t.monthfirstset = linspace(6,6,30)';
t.temperaturefirstset = data(1:30,"Temperature");
t.windspeedfirstset = data(1:30,"Ws");
t.rainfirstset = data(1:30,"Rain");
t.relativehumfirstset = data(1:30,'RH');
v = table2array(t.relativehumfirstset);
g = table2array(t.temperaturefirstset);
w = table2array(t.windspeedfirstset);
r = table2array(t.rainfirstset);
mean(r);
mode(r);
mean(g);
mode(g);
mean(w);
corr(r,w);
corr(g,w);
corr(g,r);
%Statistics for July 2012(Bejaia Region)
t2 = table();
t2.dayfirstset = (1:1:31)';
t2.monthfirstset = linspace(7,7,31)';
t2.temperaturefirstset = data(31:61,"Temperature");
t2.windspeedfirstset = data(31:61,"Ws");
t2.rainfirstset = data(31:61,"Rain");
t2.relativehumfirstset = data(31:61,'RH');
%Converting the table to an array for statistic anlaysis
v1 = table2array(t2.relativehumfirstset);
g1 = table2array(t2.temperaturefirstset);
w1 = table2array(t2.windspeedfirstset);
r1 = table2array(t2.rainfirstset);
%Statistics for August 2012(Bejaia Region)
t3 = table();
t3.dayfirstset = (1:1:31)';
t3.monthfirstset = linspace(8,8,31)';
t3.temperaturefirstset = data(62:92,"Temperature");
t3.windspeedfirstset = data(62:92,'Ws');
t3.rainfirstset = data(62:92,'Rain');
t3.relativehumfirstset = data(62:92,"RH");
%Converting the table to an array for statistic anlaysis
v2 = table2array(t3.relativehumfirstset);
g2 = table2array(t3.temperaturefirstset);
w2 = table2array(t3.windspeedfirstset);
r2 = table2array(t3.rainfirstset);
%Statistics for September 2012(Bejaia Region)
t4 = table();
t4.dayfirstset = (1:1:30)';
t4.monthfirstset = linspace(9,9,30)';
t4.temperaturefirstset = data(93:122,"Temperature");
t4.windspeedfirstset = data(93:122,"Ws");
t4.rainfirstset = data(93:122,"Rain");
t4.relativehumfirstset = data(93:122,"RH");
%Converting the table to an array for statistic anlaysis
v3 = table2array(t4.relativehumfirstset);
g3 = table2array(t4.temperaturefirstset);
w3 = table2array(t4.windspeedfirstset);
r3 = table2array(t4.rainfirstset);

% Monthly Statistics for Sidi-Bel Reigon
%Statistics for June 2012 for sidi-Bel region dataset
ts = table();
ts.daysecondset = (1:1:30)';
ts.monthsecondset = linspace(6,6,30)';
ts.temperaturesecondset = data(125:154,"Temperature");
ts.relativehumsecondset = data(125:154,"RH");
ts.windspeedsecondset = data(125:154,"Ws");
ts.rainsecondset = data(125:154,"Rain");
%Converting the table to an array for statistic anlaysis
g6 = table2array(ts.temperaturesecondset);
w6 = table2array(ts.windspeedsecondset);
r6 = table2array(ts.rainsecondset);
v6 = table2array(ts.relativehumsecondset);
mean(g6);
mean(w6);
mean(r6);
mean(v6);
corr(g6,w6);
corr(g6,r6);
%Statistics for July 2012 for sidi-Bel region dataset
ts2 = table();
ts2.daysecondset = (1:1:30)';
ts2.monthsecondset = linspace(7,7,30)';
ts2.temperaturesecondset = data(155:184,"Temperature");
ts2.relativehumsecondset = data(155:184,"RH");
ts2.windspeedsecondset = data(155:184,"Ws");
ts2.rainsecondset = data(155:184,"Rain");
%Converting the table to an array for statistic anlaysis
g7 = table2array(ts2.temperaturesecondset);
w7 = table2array(ts2.windspeedsecondset);
r7 = table2array(ts2.rainsecondset);
v7 = table2array(ts2.relativehumsecondset);
%Statistics for August 2012 for sidi-Bel region dataset
ts3 = table();
ts3.daysecondset = (1:1:31)';
ts3.monthsecondset = linspace(8,8,31)';
ts3.temperaturesecondset = data(185:215,"Temperature");
ts3.relativehumsecondset = data(185:215,"RH");
ts3.windspeedsecondset = data(185:215,"Ws");
ts3.rainsecondset = data(185:215,"Rain");
%Converting the table to an array for statistic anlaysis
g8 = table2array(ts3.temperaturesecondset);
w8 = table2array(ts3.windspeedsecondset);
r8 = table2array(ts3.rainsecondset);
v8 = table2array(ts3.relativehumsecondset);
%Statistics for September 2012 for sidi-Bel region dataset
ts4 = table();
ts4.daysecondset = (1:1:30)';
ts4.monthsecondset = linspace(9,9,30)';
ts4.temperaturesecondset = data(216:245,"Temperature");
ts4.relativehumsecondset = data(216:245,"RH");
ts4.windspeedsecondset = data(216:245,"Ws");
ts4.rainsecondset = data(216:245,"Rain");
%Converting the table to an array for statistic anlaysis
g9 = table2array(ts4.temperaturesecondset);
w9 = table2array(ts4.windspeedsecondset);
r9 = table2array(ts4.rainsecondset);
v9 = table2array(ts4.relativehumsecondset);

% Analyzing Fires/Notfires for Bejaia Reigon and making pie chart
% for loop for fires/notfires
result1 = strings(1,length(isi1));
result = strings(1,length(isi1));
for i = 1:length(isi1)
    if (isi1(i) >= 2.8) && (bui1(i) >= 5.1) && (fwi1(i) >=1.7)
        result(i) = "fire";
        result1(i) = 1;
    else
        result(i) = "no fire";
        result1(i) = 0;
    end    
end
% converting classes column to binary
claresult = strings(1,length(cla1));
for i = 1:length(cla1)
    if cla1(i) == "fire"
        claresult(i) = 1;
    elseif cla1(i) == "not fire"    
        claresult(i) = 0;
    end    
end
%inconsistencies 
j = strcmp(result1,claresult);
numofinconsistancies = numel(j) - nnz(j);
% graph1
% Pie chart for fire/not fires
f = sum(count(claresult,"1"));
nf = sum(count(claresult,"0"));
vfnf = [f,nf];
labels = {'Fires','No Fires'};
pie(vfnf,labels)
title('Fires in Bejaia Region')


% Analyzing Fires/No fires for Sidi-Bel Reigon and making pie chart
% for loop for fires/notfires
result2 = strings(1,length(isi2));
result3 = strings(1,length(isi2));
for i = 1:length(isi2)
    if (isi2(i)>=2.7) && (bui2(i)>=6) && (fwi2(i)>=2.5)
        result2(i) = "fire";
        result3(i) = 1;
    else
        result2(i) = "not fire";
        result3(i) = 0;
    end
end
%Converting classes column to binary 
claresult1 = strings(1,length(cla2));
for i = 1:length(cla2)
    if cla2(i) == "fire"
        claresult1(i) = 1;
    elseif cla2(i) == "not fire"
            claresult1(i) = 0;
    end
end
%Inconsistencies 
j1 = strcmp(result3,claresult1);
numofinconsistencies = numel(j1)-nnz(j1);
%graph2 
% Pie chart for fire/not fires
f1 = sum(count(claresult1,"1"));
nf1 = sum(count(claresult1,"0"));
vfnf1 = [f1,nf1];
labels = {'Fires','No Fires'};
pie(vfnf1,labels)
title('Fires in Sidi-Bel Region')

% grahs and plos

tiledlayout(6,1)

nexttile
histogram(rain1)
title('Histogram for Rain in Bejaia Reigon')

nexttile
histogram(rain2)
title('Histogram for Tempratue in Sidi-Bel Reigon')

nexttile
boxplot(temp1)
title('Boxplot for Rain in Bejaia Reigon')

nexttile
boxplot(temp2)
title('Boxplot for Rain in Sidi-Bel Reigon')

nexttile
f = sum(count(claresult,"1"));
nf = sum(count(claresult,"0"));
vfnf = [f,nf];
labels = {'Fires','No Fires'};
pie(vfnf,labels)
title('Fires in Bejaia Region')

nexttile
% Pie chart for fire/not fires
f1 = sum(count(claresult1,"1"));
nf1 = sum(count(claresult1,"0"));
vfnf1 = [f1,nf1];
labels = {'Fires','No Fires'};
pie(vfnf1,labels)
title('Fires in Sidi-Bel Region')

