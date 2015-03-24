require 'pi_piper'

led_green = PiPiper::Pin.new :pin => 24, :direction => :out

puts "Please the switch to get started"


PiPiper.watch :pin => 18 do
  #puts "#{last_value} -> #{value}"
  if value == 0 then
    puts "Pressed!!"
    led_green.on
  else
    puts "Released..."
    led_green.off
  end
end

PiPiper.wait
