#largest digit of a number

echo enter a number
read n
max=0

while [ $n -ne 0 ]
do
((r=n%10))
if [ $r -gt $max ];
then
((max=r))
fi
((n=((n-r))/10))
done

echo $max
