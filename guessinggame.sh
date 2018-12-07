# I'll be honest, I have NO idea where to cram a function in here.
fileCount=$(ls -l | grep -v ^l | wc -l)
isCorrect=0
echo "Take a guess as to how many files are here!"
while [[ isCorrect -lt 1 ]]
do
	read guess
	if [[ $guess -gt $fileCount ]]
        then
                echo "Your guess was too high, try again."
        fi
        if [[ $guess -lt $fileCount ]]
        then
                echo "Your guess was too low, try again."
        fi
        if [[ $guess = $fileCount ]]
        then
                echo "Congratulations! Your guess was correct!"
                let isCorrect=1
        fi
done
