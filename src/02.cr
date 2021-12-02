input = File.read_lines("02.input").map do |x|
  x.chomp
end

forward = 0
depth = 0

input.each do |d|
  dir, m = d.split()
  if dir == "forward"
    forward += m.to_i
  end

  if dir == "up"
    depth -= m.to_i
  end

  if dir == "down"
    depth += m.to_i
  end
end

puts "2A: #{forward*depth}"

forward = 0
depth = 0
aim = 0

input.each do |d|
  dir, m = d.split()
  if dir == "forward"
    forward += m.to_i
    depth += (m.to_i * aim)
  end

  if dir == "up"
    aim -= m.to_i
  end

  if dir == "down"
    aim += m.to_i
  end



end

puts "2B: #{forward*depth}"
