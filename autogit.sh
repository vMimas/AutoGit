#!/bin/bash
# autogit.sh

#automation of some git procedures

# If user input $1 exists run autogit there, else run here.
if [ $1 ]
then
  folder=$1
  cd $folder
  echo -n "Running autogit in: "
  pwd
else
  echo -n "No folder specified. Running autogit in: "
  pwd
fi

# Verify status
echo -e "\n\tGIT STATUS"
git status

while [ "$action" != "q" ] && [ "$action" != "Q" ]
do
  echo -e "\nOptions: (quit with 'q')"
  echo -e "\t'a' for git add (all)"
  echo -e "\t'd' for git diff"
  echo -e "\t's' for git status"
  echo -e "\t'l' for git log"
  echo -e "\t'c' for git commit"

  echo -e "\n\t'q' to exit program\n"

  read -p "Action to take: " action

  case "$action" in
    "a" | "A")
      git add .
      echo -e "\nAdding all files to git..."
      echo -e "\n\tGIT STATUS"
      git status
      ;;
    "d" | "d")
      echo -e "\n\tGIT DIFF"
      git diff
      ;;
    "s" | "S")
      echo -e "\n\tGIT STATUS"
      git status
      ;;
    "l" | "L")
      echo -e "\n\tGIT LOG"
      git log
      ;;
    "c" | "c")
      echo -n "Enter commit message: "
      read message

      echo -e "\n\tCOMMITTING"
      git commit -m "$message"
      echo -e "\n\tLATEST GIT LOG"
      git log | head -n 5
      action="q"
      ;;
    "q" | "Q")
      echo -e '\nQuiting...'
      ;;
    *)
      echo -e "\nEntry invalid."
      ;;
  esac
done

echo -e "\nDONE"
