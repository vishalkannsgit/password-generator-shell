# Perl Password Generator Script

Welcome to the **Perl Password Generator Script**! 🔐✨

If you need to generate strong, random passwords quickly and easily, this Perl script has got you covered. Whether you're setting up a new account, managing credentials, or just exploring Perl, this tool will help you create secure passwords tailored to your needs.

## 📜 Description

This script generates random passwords based on the length and number specified by the user. It combines uppercase letters, lowercase letters, numbers, and special characters to ensure robust password security. 

## 🚀 Features

- **Customizable Length:** Specify how long you want each password to be.
- **Multiple Passwords:** Generate as many passwords as you need in one go.
- **Simple and Secure:** Uses Perl’s built-in functions for password generation and file handling.
- **No Extra Modules Required:** Works out-of-the-box with standard Perl installation.

## 🔧 Prerequisites

- Perl (usually pre-installed on most Unix-based systems)

## 🛠 Installation

1. **Create the Script:**
   - Open a text editor and paste the Perl script below.
   - Save the file with a `.pl` extension, for example, `passwords.pl`.

2. **Make the Script Executable:**
   - Open your terminal and navigate to the directory where you saved the script.
   - Run the following command to make the script executable:
     ```bash
     chmod +x passwords.pl
     ```

## 🏃‍♂️ Usage

1. **Run the Script:**
   - Execute the script by running:
     ```bash
     ./passwords.pl
     ```

2. **Follow the Prompts:**
   - The script will ask you to enter the desired password length and the number of passwords you want to generate.
   - Enter your choices and press `Enter`.

3. **Retrieve Your Passwords:**
   - The generated passwords will be saved to a file named `passwords.txt` in the same directory as the script.
   - View the passwords using:
     ```bash
     cat passwords.txt
     ```

## 📜 Example

```bash
$ ./passwords.pl
Enter the desired password length: 12
Enter the number of passwords to generate: 5
5 passwords generated and saved to passwords.txt
