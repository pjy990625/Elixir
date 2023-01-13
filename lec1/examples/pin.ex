defmodule Greeter do
  def greet(name, greeting) do
    fn
      ^name -> "#{greeting} #{name}"
      _ -> "Who are you?"
    end
  end
end

skylar = Greeter.greet("Skylar", "Hello")
IO.puts(skylar.("Skylar"))
IO.puts(skylar.("Bob"))
