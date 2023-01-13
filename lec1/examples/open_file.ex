open_file = fn
  {:ok, file} -> "First line: #{IO.read(file, :line)}"
  {_, error} -> "Error: #{:file.format_error(error)}"
end

IO.puts(open_file.(File.open("hello.txt")))
IO.puts(open_file.(File.open("bye.txt")))
