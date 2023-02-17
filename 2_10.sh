echo "enter the number "
read n
c=0
((a=n))
while [ $n -gt 0 ]
do
((temp=n%10))
((c++))
((n=n/10))
done

echo "$c"
((c--))

while [ $a -gt 0 ]
do
((temp=a%10))
((x=10**c))
((temp =temp*x))
((sum=sum+temp))
((c--))
((a=a/10))
done
echo "$sum"
