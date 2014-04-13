class AverageTime
  def initialize(times)
    @times = times
    @time_obj = Time.new
  end

  def convert_time
    @times.map! do |time|
      time_arr = time.split(':')
      hour = time_arr[0].to_i
      minute = time_arr[1][0,2]
      hour += 12 if time.include?("pm")
      hour = 0 if time.include?("am") && hour == 12
      time = Time.mktime(@time_obj.year, @time_obj.month, @time_obj.day, hour, minute)
    end

  end

  def get_average
    all_times = convert_time
    sorted_times = all_times.sort {|a,b| b <=> a}
    sorted_times[sorted_times.size/2]
  end
end
