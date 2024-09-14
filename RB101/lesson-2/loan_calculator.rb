# Program methods
def prompt(message)
  puts("=> #{message}")
end

def valid_number?(number)
  number.to_f.to_s == number.to_s || number.to_i.to_s == number.to_s
end

def calculate_monthly_rate(annual_percentage_rate)
  annual_percentage_rate / 12
end

def calculate_monthly_payment(loan_amount, monthly_rate, loan_duration_in_months)
  if monthly_rate.zero?
    loan_amount / loan_duration_in_months
  else
    loan_amount * (monthly_rate / (1 - (1 + monthly_rate)**-loan_duration_in_months))
  end
end

# Welcome message
prompt('Welcome to the loan calculator! Please enter your name:')
name = ''
loop do
  name = gets.chomp

  break unless name.empty? # Guard clause to break out if name is not empty

  prompt('Please enter a valid name.')
end

prompt("Hi there, #{name}! I am your personal loan calculator.")

# Main loop
loop do
  loan_amount = ''
  loop do
    prompt('What is your principal loan amount?')
    loan_amount = gets.chomp
    break if valid_number?(loan_amount) && loan_amount.to_f.positive?

    prompt('Please enter a valid positive number.')
  end
  loan_amount = loan_amount.to_f

  annual_percentage_rate = ''
  loop do
    prompt('What percent is your loan APR? (e.g., 5 for 5%)')
    annual_percentage_rate = gets.chomp
    break if valid_number?(annual_percentage_rate) && annual_percentage_rate.to_f >= 0

    prompt('Please enter a valid APR.')
  end
  annual_percentage_rate = annual_percentage_rate.to_f / 100
  monthly_rate = calculate_monthly_rate(annual_percentage_rate)

  loan_duration_in_years = ''
  loop do
    prompt('What is your loan duration in years?')
    loan_duration_in_years = gets.chomp
    break if valid_number?(loan_duration_in_years) && loan_duration_in_years.to_i.positive?

    prompt('Please enter a valid positive number.')
  end
  loan_duration_in_years = loan_duration_in_years.to_i
  loan_duration_in_months = loan_duration_in_years * 12

  monthly_payment = calculate_monthly_payment(loan_amount, monthly_rate, loan_duration_in_months)
  prompt('Calculating your monthly payment...')
  sleep(2)
  prompt("Your monthly payment is $#{monthly_payment.round(2)}")
  sleep(1)
  prompt('Do you want to calculate another loan? (Y to calculate again)')
  answer = gets.chomp
  break unless answer.downcase == 'y'
end

prompt('Thank you for using the loan calculator. Have a nice day!')
