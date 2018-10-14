require 'rpi_gpio'

# set all northbound pins
light_pins = {
  north_red: 20,
  north_yellow: 16,
  north_green: 12,
  north_blue: 23,
  south_blue: 22,
  south_green: 6,
  south_yellow: 13,
  south_red: 26,
}



# set all southbound pins
# south_blue = 22
# south_green = 6
# south_yellow = 13
# south_red = 26

# setup all RPi things
RPi::GPIO.set_numbering :bcm
# set each pin as an output
light_pins.each do |pin, value|
  RPi::GPIO.setup value, :as => :output
end

def clear_all_lights
  light_pins.each do |pin, value|
    RPi::GPIO.set_low value
  end
end

index = 0

while true
  case index
  when 0
    clear_all_lights
    RPi::GPIO.set_high light_pins[:north_blue]
    RPi::GPIO.set_high light_pins[:south_blue]
    index += 1
    sleep(2)
  when 1
    clear_all_lights
    RPi::GPIO.set_high light_pins[:north_green]
    RPi::GPIO.set_high light_pins[:south_green]
    index += 1
    sleep(2)
  when 2
    clear_all_lights
    RPi::GPIO.set_high light_pins[:north_yellow]
    RPi::GPIO.set_high light_pins[:south_yellow]
    index += 1
    sleep(2)
  when 3
    clear_all_lights
    RPi::GPIO.set_high light_pins[:north_red]
    RPi::GPIO.set_high light_pins[:south_red]
    index = 0
    sleep(2)
  end
end
