def add(first, second)
  first + second
end

def subtract(first, second)
  if first > second
    first - second
  else
    second - first
  end
end

def sum(input)
  if input.empty?
    0
  else
    sum = 0
    input.each {|num| sum += num }
    sum
  end
end

def multiply(input)
  if input.empty?
    0
  else
    input.inject(:*)
  end
end