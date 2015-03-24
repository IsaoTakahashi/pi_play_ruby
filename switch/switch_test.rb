require 'pi_piper'

puts "Please the switch to get started"

PiPiper.watch :pin => 18 do
  #puts "#{last_value} -> #{value}"
  if value == 0 then
    puts "Pressed!!"
  else
    puts "Released..."
  end
end

PiPiper.wait
