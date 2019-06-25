count = 0
while count < 100
prompt1 = 'Enter weight in pounds'
weight= inputdlg(prompt1)
str = weight{[1, 1]}
userweight = str2num(str)
prompt2 = 'Enter height in inches'
height = inputdlg(prompt2)
str2 = height{[1, 1]}
userheight = str2num(str2)
bmi = 703*userweight/(userheight*userheight)

for i = 48:84
  lowerbound(i - 47) = (18.5*i*i)/703
  upperbound(i-47) = (25*i*i)/703
end

x= lowerbound(userheight-47)
y = upperbound(userheight-47)

a = abs(x - userweight)
b = abs(y - userweight)
if bmi < 18.5
Message = sprintf( 'You are %d pounds underweight. \n', a);
h = msgbox(Message)
count++;
end
if bmi >= 18.5 && bmi < 25
  Message2 = sprintf( 'You are a healthy weight.');
  h = msgbox(Message2)
  count++;
end
if bmi >= 25
  Message3 = sprintf( 'You are %d pounds overweight.\n', b);
  h = msgbox(Message3)
  count++;
end

end


