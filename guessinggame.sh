echo "############  Welcome to Guessing game ##############"

function find {
	echo "Please enter the number of files in the current directory:"
	read guess
    files=$(ls -1 | wc -l)
}

find

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	find
done

echo "Well done, here is the list of files:"
echo ">>>>" && ls -1
