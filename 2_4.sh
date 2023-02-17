#factorial

echo Enter a number
read n
s=1
for(( c=2;c<=n;c++ ))
do
((s=s*c))
done
echo $s
