def car(new_car)
  make = make(new_car)
  model = model(new_car)
  [make, model]
end

def make(new_car)
  new_car.split(" ")[0]
end

def model(new_car)
  new_car.split(" ")[2] # this will return nil because there is no element at index 2
end

p make, model = car("Ford Mustang")
p make == "Ford"
p mode.start_with?("M")