#fibonacci

echo enter no.of terms
read n
if [ $n -eq 1 ];
then
echo 0
elif [ $n -eq 2 ];
then
echo 0" "1
elif [ $n -gt 2 ];
then
echo -n 0" "1" "
a=0
b=1
for (( i=0;i<n-2;i++ ))
do
((c=a+b))
echo -n $c" "
((a=b))
((b=c))
done
fi
