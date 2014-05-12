require 'io/console'

while(true)
  #deal with a line
  line_content = ""
  while(true)
    print "\033[0K\r(#{line_content})\b"
    next_char = STDIN.getch
    if next_char == "\r"
      puts
      puts "Result: #{line_content}"
      break
    else
      line_content += next_char
    end
  end
  
  if line_content.strip == "exit"
    break
  end
end