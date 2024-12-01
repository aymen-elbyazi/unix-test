function count_files {
    echo $(ls -1 | wc -l)
}

# Main logic
correct_count=$(count_files)
user_guess=-1

echo "Welcome to the guessing game!"
echo "How many files are in the current directory?"

while [[ $user_guess -ne $correct_count ]]; do
    read -p "Enter your guess: " user_guess

    if [[ $user_guess -lt $correct_count ]]; then
        echo "Your guess is too low!"
    elif [[ $user_guess -gt $correct_count ]]; then
        echo "Your guess is too high!"
    else
        echo "Congratulations! You guessed correctly."
    fi
done
