#!/usr/bin/perl
use strict;
use warnings;

sub generate_password {
    my $length = shift;
    my @chars = ('A'..'Z', 'a'..'z', '0'..'9', '_', '@', '!', '#', '$', '%', '^', '&', '*', '(', ')');
    return join '', map { $chars[int(rand(@chars))] } 1..$length;
}

print "Enter the desired password length: ";
chomp(my $password_length = <STDIN>);

unless ($password_length =~ /^\d+$/ && $password_length > 0) {
    die "Invalid input. Please enter a positive number for length.\n";
}

print "Enter the number of passwords to generate: ";
chomp(my $num_passwords = <STDIN>);

unless ($num_passwords =~ /^\d+$/ && $num_passwords > 0) {
    die "Invalid input. Please enter a positive number for the number of passwords.\n";
}

my $password_file = 'passwords.txt';
open my $fh, '>', $password_file or die "Could not open '$password_file' $!\n";

for (1..$num_passwords) {
    my $password = generate_password($password_length);
    print $fh "$password\n";
}

close $fh;

print "$num_passwords passwords generated and saved to $password_file\n";
