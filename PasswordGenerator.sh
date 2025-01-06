#!/bin/bash

# Simple Password Generator

echo "This is the simple password generator"
echo "Please enter the password length"
read PASS_LENGTH

for p in $(seq 1 5):
do
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done


echo "These are two simple ways for base64 conversion"
echo "Enter the Password"
read PASSWORD
echo -n "$PASSWORD$(openssl rand -base64 48 | tr -d '\n')" | base64 |  tr -d '\n' | cut -c1-16
echo -n $PASSWORD | base64
