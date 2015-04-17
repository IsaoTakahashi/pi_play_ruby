require 'pi_piper'
require 'uri'
require 'net/http'

def set_down_tag
#  begin
#    result = RestClient.get 'http://localhost/servo/0'
#  rescue Exception => e
#    p e
#  end
  uri_parsed = URI.parse('http://192.168.100.100/attendance/arrive/3')
  http = Net::HTTP.new(uri_parsed.host)
  http.get(uri_parsed.path)
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
