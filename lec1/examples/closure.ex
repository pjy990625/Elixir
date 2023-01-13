greeter = fn name -> (fn -> "Hello, #{name}" end) end
skylar_greeter = greeter.("Skylar")
IO.puts(skylar_greeter.())

add_n = fn n -> (fn other -> n + other end) end
add_two = add_n.(2)
add_five = add_n.(5)
IO.puts(add_two.(3))
IO.puts(add_five.(7))

prefix = fn name -> (fn -> "Mrs #{name}" end) end
mrs = prefix.("Smith")
IO.puts(mrs.())
