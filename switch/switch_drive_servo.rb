require 'pi_piper'

def set_down_tag
#  begin
#    result = RestClient.get 'http://localhost/servo/0'
#  rescue Exception => e
#    p e
#  end
  `echo 6=0% > /dev/servoblaster`
end

puts "Please the switch to get started"

PiPiper.watch :pin => 18 do
  #puts "#{last_value} -> #{value}"
  if value == 0 then
    puts "Pressed!!"
    set_down_tag
    sleep(2)
  else
    puts "Released..."
  end
end

PiPiper.wait
