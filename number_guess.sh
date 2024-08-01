#!/bin/bash

#fix12345

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:"
read IN_NAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$IN_NAME'")

if [[ $USER_ID ]]
then
  NAME=$($PSQL "SELECT name FROM users WHERE user_id=$USER_ID")
  GAMES_PLAYED=$($PSQL "SELECT count(*) FROM games WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT min(guesses) FROM games WHERE user_id=$USER_ID")
  echo -e "\nWelcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
else
  USER_RESULT=$($PSQL "INSERT INTO users(name) VALUES('$IN_NAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$IN_NAME'")
  NAME=$($PSQL "SELECT name FROM users WHERE user_id=$USER_ID")
  echo -e "\nWelcome, $NAME! It looks like this is your first time here."
fi

HIT_NUM=$((RANDOM % 1000 + 1))

echo -e "\nGuess the secret number between 1 and 1000:"
read GEUSS_NUMBER

while [[ ! $GEUSS_NUMBER =~ ^[0-9]+$ ]]
do
  echo -e "\nThat is not an integer, guess again:"
  read GEUSS_NUMBER
done

GES_COUNT=1

while [[ $GEUSS_NUMBER -ne $HIT_NUM ]]
do
  if [[ $GEUSS_NUMBER -gt $HIT_NUM ]]
  then
    echo -e "\nIt's lower than that, guess again:"
    read GEUSS_NUMBER
    GES_COUNT=`expr $GES_COUNT + 1`
  else
    echo -e "\nIt's higher than that, guess again:"
    read GEUSS_NUMBER
    GES_COUNT=`expr $GES_COUNT + 1`
  fi
done

echo -e "\nYou guessed it in $GES_COUNT tries. The secret number was $HIT_NUM. Nice job!"

GAME_RESULT=$($PSQL "INSERT INTO games(guesses, user_id) VALUES($GES_COUNT, $USER_ID)")
