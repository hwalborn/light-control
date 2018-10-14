require 'rpi_gpio'

# set all northbound pins
north_blue = 23
north_green = 12
north_yellow = 16
north_red = 20

# set all southbound pins
south_blue = 22
south_green = 6
south_yellow = 13
south_red = 26

# setup all RPi things
RPi::GPIO.set_numbering :bcm
# set all northbound pins as outputs
RPi::GPIO.setup north_blue, :as => :output
RPi::GPIO.setup north_green, :as => :output
RPi::GPIO.setup north_yellow, :as => :output
RPi::GPIO.setup north_red, :as => :output
# set all southbound pins as outputs
RPi::GPIO.setup south_blue, :as => :output
RPi::GPIO.setup south_green, :as => :output
RPi::GPIO.setup south_yellow, :as => :output
RPi::GPIO.setup south_red, :as => :output
