###############################################################################
#
# Introduction to Ruby on Rails
#
# Homework 03
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to help you better understand Arrays, Hashes and Loops that we
# learned in Lesson 03.
#
###############################################################################
#
# 1. Review your solution to Lab 02. Copy and Paste your solution to
#    this file.
#
# 2. Create a new Array variable called `set_of_numbers`, this will be
#    a range between 1 - 10 that our Player will guess from. Each value
#    in the Array should be an integer.
#
# 3. Change the variable `secret_number` (HW_02) so that instead of a hard-coded
#    Integer, it randomly chooses one of the options from `set_of_numbers`
#    ('secret_number' is the integer our Player will try to guess).
#
#      Hint: Look up Array#sample in the Ruby documentation.
#
# 4. Create a new Hash variable called `messages`. In this Hash will be
#    four Keys Value pairs:
#
#    1. :win - A String telling the Player that they have won.
#
#    2. :lose - A String telling the Player that they have lost and what
#       the correct number was.
#
#    3. :too_low - A String telling the Player that their guess was too
#       low.
#
#    4. :too_high - A String telling the Player that their guess was too
#       high.
#
# 5. Change the behavior of your program, so instead of hard coding, use the principles of DRY(don't repeat yourself). 
#    This means using a Loop to iterate over your code either until the Player has guessed the
#    correct number, or they have tried to guess 3 times.
#
# 6. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
#Put your solution below this line.
#
###############################################################################



name = "Ryan"
puts "Welcome to my game. #{name} is the creator." 
#
# 2. Ask the user for their name and store it in a variable.
#
prompt = '> '
puts "What is your name?"
print prompt
player_name = STDIN.gets.chomp()

# 3. Personally greet the player by printing to the screen, "Hi player_name! 
#	 Let them know they have 3 guesses to guess the Secret Number between 1 and 10.
puts "Hi #{player_name}! You have 3 guesses to guess the Secret Number between 1 and 10!"

# 4. Create a new Integer variables called `guesses_left`, this will count
#    down how many more times the Player can guess. It's initial value should
#    be 3.
guesses_left = 3
#
# 5. Using String Interpolation, concatenate the variable `guesses_left`
#    into a String that tells the Player how many guesses they have left
#    and print it to the screen.
#
puts "You have #{guesses_left} guesses left!"

# 6. Create a new Integer variable called `secret_number` and set the value to
#    a number of your choosing between 1 and 10. This is the number that
#    our Player will try to guess.

set_of_numbers = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]

secret_number = set_of_numbers.sample
#


messages = Hash.new

messages[:win] = [ "#{player_name}, you won!" ]

messages[:lose] = [ "#{player_name}, you lose! The correct number is #{secret_number}"]

messages[:too_low] = [ "Your guess was too low" ]

messages[:too_high] = [ "Your guess was too high" ]



#This means using a Loop to iterate over your code either until the Player has guessed the
#correct number, or they have tried to guess 3 times.

3.times do |guesses_left|
	puts "What is your guess?"
	print prompt
	guess = $stdin.gets.chomp.to_i
	print "#{messages[guesses_left]}, "

	if guess == secret_number
	puts "Correct!"
	exit

	elsif secret_number > guess 
	puts "#{messages[:too_low][guesses_left]}"
	elsif secret_number < guess
	puts "#{messages[:too_high][guesses_left]}"
	end

end












