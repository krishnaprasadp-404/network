echo "Enter an integer:"
read number

flag=1

for ((i=2; i<=number/2; i++))
do
    if [ $((number % i)) -eq 0 ]
    then
        flag=0
        break
    fi
done

if [ $number -eq 1 ]
then
    echo "1 is neither prime nor composite."
elif [ $flag -eq 1 ]
then
    echo "The number $number is a prime number."
else
    echo "The number $number is not a prime number."
fi

