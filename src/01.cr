#!/usr/bin/env crystal
# First step
inc = 0
prev = nil
input = File.read_lines("01.input").map do |x|
  x.chomp.to_i
end
input.each do |measure|
  if prev.nil?
    prev = measure
    next
  end
  if measure > prev
    inc += 1
  end
  prev = measure
end

puts "1A: #{inc}"

inc2 = 0
prev = nil
input.each_cons(3) do |cons|
  sum = cons.sum
  if prev.nil?
    prev = sum
    next
  end

  if sum > prev
    inc2 += 1
  end
  prev = sum
end

puts "1B: #{inc2}"
