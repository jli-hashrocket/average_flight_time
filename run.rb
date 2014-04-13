require_relative 'average_time'
require 'pry'


average_flight_time = AverageTime.new(["11:51pm", "11:56pm", "12:01am", "12:06am", "12:11am"])
average_flight_time.get_average
