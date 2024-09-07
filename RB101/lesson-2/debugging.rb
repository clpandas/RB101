=begin
Another error: 
ruby debugging.rb
debugging.rb:7:in `make': wrong number of arguments (given 0, expected 1) (ArgumentError)
from debugging.rb:15:in `<main>'

This error is because of a name conflict 
between the local variable `make` inside the `car` method
and the method `make` itself. 
Variable shadowing is causing `make` and `model`
to shadow the method names, leading to an `ArgumentError`
when trying to call `make` without any arguments.
=end
def car(new_car)
  make = make(new_car)
  model = model(new_car)
  [make, model]
end

def make(new_car)
  new_car.split(" ")[0]
end

def model(new_car)
  new_car.split(" ")[1]
end

p make, model = car("Ford Mustang")
p make == "Ford"
p mode.start_with?("M")
