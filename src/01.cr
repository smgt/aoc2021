# First step

def work(input)
  inc = 0
  prev = nil

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

  return inc
end

input = File.read_lines("01.input").map do |x|
  x.chomp.to_i
end

a = work(input)
puts "1A: #{a}"

input2 = [] of Int32
input.each_cons(3) do |c|
  input2 << c.sum
end
b = work(input2)

puts "1B: #{b}"
