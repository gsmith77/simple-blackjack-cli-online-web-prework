def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
    rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input=gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total= deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  user_input=get_user_input
  if user_input == "h"
    return card_total += deal_card
    return display_card_total
    elsif user_input == "s"
    return card_total
    return display_card_total
end

def invalid_command
  prompt_user
  get_user_input
  puts "Please enter a valid command"
end
end

def runner
  welcome
  card_total=initial_round
  until card_total == 21 
  card_total = hit?(card_total) 
  display_card_total(card_total)
end
end_game(card_total)
end