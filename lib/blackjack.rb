def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1+Random.rand(10)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
  number
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  card_one=deal_card
  card_two=deal_card
  sum=card_one+card_two
  display_card_total(sum)
end

def hit? (current_card_total)
  prompt_user
  input=get_user_input
  if input=='h'
    card_one=deal_card
    total=current_card_total+card_one
    total
  elsif input =='s'
    final=current_card_total
    final
  else
    invalid_command
    prompt_user
  end
  
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_cards=initial_round
  current_total=hit? (display_card_total(current_cards))
  until current_total>21
    hit?
  end
end_game
end
    
