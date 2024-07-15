#!/bin/bash

# Function to generate a random password
generate_password() {
    local length=$1
    tr -dc 'A-Za-z0-9!@#$%^&*()_+' < /dev/urandom | head -c $length
}

# Ask for the number of characters in each password
read -p "Enter the number of characters for the password: " char_count

# Ask for the number of passwords to generate
read -p "Enter the number of passwords you need: " pass_count

# File to save the passwords
output_file="passwords.txt"

# Generate and save the passwords
echo "Generating $pass_count passwords with $char_count characters each..."

for ((i = 1; i <= pass_count; i++)); do
    password=$(generate_password $char_count)
    echo "Password $i: $password" >> $output_file
done

echo "Passwords have been saved to $output_file"
