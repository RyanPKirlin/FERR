###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 04
#
# Purpose:
#
# Read the steps below and complete the exercises in this file. This Lab
# will help you to review the basics of Object-Oriented Programming that
# we learned in Lesson 04.
#
###############################################################################
#
# 1. Review your solution to Lab 03. Copy and Paste your solution to
#    this file.
#
# 2. Create a new method called `increment_guess_count` that takes
#    an integer parameter and increments it by 1.
#
# 3. Create a new method called `guesses_left` that calculates how many guesses 
#	 out of 3 the Player has left. The method should take one parameter that is the 
#	 number of guesses the player has guessed so far. Use this new method in your 
#	 code to tell the user how many guesses they have remaining. 
#
# 4. Make sure to remove your local variable `guesses_left` and use the
#    new method instead.
#
# 5. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
# Student's Solution
#
###############################################################################

current_guess_count = 0

#
# 3.  
# 2. Create a new method called `increment_guess_count` that takes
#    an integer parameter and increments it by 1.

def increment_guess_count(current_guess_count)
	current_guess_count += 1
end
# Create a new method called `guesses_left` that calculates how many guesses 
#	 out of 3 the Player has left. The method should take one parameter that is the 
#	 number of guesses the player has guessed so far. Use this new method in your 
#	 code to tell the user how many guesses they have remaining.

def guesses_left(current_guess_count)
	3 - current_guess_count
end

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


#
# 5. Using String Interpolation, concatenate the variable `guesses_left`
#    into a String that tells the Player how many guesses they have left
#    and print it to the screen.
#


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
	current_guess_count = increment_guess_count(current_guess_count)
	print "#{messages[guesses_left]}, "

	if guess == secret_number
	puts messages[:win]
	puts "you guessed in #{current_guess_count} turns!"
	exit

	elsif secret_number > guess 
	puts "#{messages[:too_low][guesses_left]}"
	elsif secret_number < guess
	puts "#{messages[:too_high][guesses_left]}"
	end

end






















