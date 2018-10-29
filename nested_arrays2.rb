numbers = [
  [1, 2, 3],
  [2, 2, 2],
  [3, 2, 1]
]

lines = numbers.map do |stars|
 stars.map { |number| "*" * number }.join(" ")
end

lines.each { |line| puts line }