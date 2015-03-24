require 'pi_piper'

led = PiPiper::Pin.new pin:17, direction: :out

5.times do
  led.on
  sleep 0.5
  led.off
  sleep 0.5
end
