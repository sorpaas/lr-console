require 'io/console'
require 'heist'

puts "(lr-console"
puts " (author . sorpaas)"
puts " (version . v0.01)"

scheme = Heist::Runtime.new

while(true)
  #deal with a line
  line_content = ""
  while(true)
    print "\n)\033[1A\033[0K\r(#{line_content})\b"
    next_char = STDIN.getch
    if next_char == "\r"
      puts
      break
    elsif next_char == "\u007F"
      line_content = line_content[0, line_content.length - 1]
    else
      line_content += next_char
    end
  end
  
  if line_content.strip == "exit"
    break
  else
    puts scheme.eval "(#{line_content})"
  end
end