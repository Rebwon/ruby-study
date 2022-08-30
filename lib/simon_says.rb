def echo(input)
  input
end

def shout(input)
  input.upcase
end

def repeat(input, count = 2)
  # implements 1
  # arr = [input] * count
  # arr.join(" ")
  #
  # implements 2
  # count.times.collect { input }.join(' ')
  #
  # implements 3
  [input] * count * ' '
  #
  # implements 4
  # [input].cycle(count).to_a.join(' ')
  #
  # implements 5
  # Array.new(count, input).join(' ')
end

def start_of_word(input, range)
  input[0, range]
end

def first_word(input)
  input.split(' ')[0]
end

def titleize(input)
  input.capitalize!
  # %w[] is literal array. see https://stackoverflow.com/questions/1274675/what-does-warray-mean
  words_no_cap = %w[and or the over to the a but]
  phrase = input.split(" ").map { |word|
    if words_no_cap.include?(word)
      word
    else
      word.capitalize
    end
  }.join(" ")
  phrase
end