require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(num)
  /^-?\d+$/.match?(num)
end

def float?(num)
  /^-?(\d+(\.\d*)?|\.\d+)$/.match?(num)
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  response =  case op
              when '1'
                messages('adding', LANGUAGE)
              when '2'
                messages('subtracting', LANGUAGE)
              when '3'
                messages('multiplying', LANGUAGE)
              when '4'
                messages('dividing', LANGUAGE)
              end

  x = "Some code"

  response
end

prompt(messages('welcome', LANGUAGE))

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(messages('valid_name', LANGUAGE))
  else
    break
  end
end

prompt(messages('hello', LANGUAGE) % { name: name })

loop do # main loop
  number1 = ''
  loop do
    prompt(messages('first_number', LANGUAGE))
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(messages('valid_number', LANGUAGE))
    end
  end

  number2 = ''
  loop do
    prompt(messages('second_number', LANGUAGE))
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(messages('valid_number', LANGUAGE))
    end
  end

  prompt(messages('operator_prompt', LANGUAGE))

  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    if %w[1 2 3 4].include?(operator)
      break
    else
      prompt(messages('valid_operation', LANGUAGE))
    end
  end

  prompt(messages('calculating', LANGUAGE) % { operation: operation_to_message(operator) })
  sleep(2)

  result = case operator
           when '1'
             number1.to_f() + number2.to_f()
           when '2'
             number1.to_f() - number2.to_f()
           when '3'
             number1.to_f() * number2.to_f()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt(messages('result', LANGUAGE) % { result: result })

  prompt(messages('another_calculation', LANGUAGE))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(messages('thank_you', LANGUAGE))
