VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}

WINNING_SCENARIOS = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'spock' => ['scissors', 'rock'],
  'lizard' => ['spock', 'paper']
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_welcome_prompt
  prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock!")
  sleep(1)
  prompt("Win 3 rounds to be declared the grand winner.")
  sleep(1)
end

def display_choice_prompt
  prompt("Choose one: r for rock, p for paper, sc for scissors, l for lizard, or sp for spock.")
end

def valid_choice?(choice)
  VALID_CHOICES.key?(choice) || VALID_CHOICES.value?(choice)
end

def get_player_choice
  loop do
    display_choice_prompt
    choice = Kernel.gets().chomp()
    return choice if valid_choice?(choice)
    
    prompt("That's not a valid choice.")
  end
end

def convert_player_choice(choice)
  VALID_CHOICES.key?(choice) ? VALID_CHOICES[choice] : choice
end

def get_computer_choice
  VALID_CHOICES.values.sample
end

def update_score(player, computer, scoreboard)
  if WINNING_SCENARIOS[player].include?(computer)
    scoreboard[:player] += 1
  elsif WINNING_SCENARIOS[computer].include?(player)
    scoreboard[:computer] += 1
  end
end

def display_winner(player, computer)
  if WINNING_SCENARIOS[player].include?(computer)
    prompt("You win!")
  elsif WINNING_SCENARIOS[computer].include?(player)
    prompt("Computer wins!")
  else
    prompt("It's a tie!")
  end
end

def display_choices(choice, computer_choice)
  prompt("You chose: #{choice}, Computer chose: #{computer_choice}")
end

def display_score(scoreboard)
  prompt("Your score: #{scoreboard[:player]}, Computer score: #{scoreboard[:computer]}")
end

def display_grand_winner(scoreboard)
  if scoreboard[:player] == 3
    prompt("The grand winner is YOU!")
  elsif scoreboard[:computer] == 3
    prompt("The grand winner is the COMPUTER!")
  end
end

def play_again?
  loop do 
    prompt("Do you want to play again? (y/n)")
    answer = Kernel.gets().chomp.downcase
    return answer == 'y' if answer == 'y' || answer == 'n'

    prompt("Please enter 'y' or 'n'.")
  end
end

# Main game loop
display_welcome_prompt
scoreboard = { player: 0, computer: 0 }

loop do
  player_choice = convert_player_choice(get_player_choice)
  computer_choice = get_computer_choice

  display_choices(player_choice, computer_choice)
  display_winner(player_choice, computer_choice)

  update_score(player_choice, computer_choice, scoreboard)
  display_score(scoreboard)

  break if scoreboard.values.any? { |score| score == 3 }
  
  break unless play_again?
end

display_grand_winner(scoreboard)

prompt("Thank you for playing! Bye-bye!")