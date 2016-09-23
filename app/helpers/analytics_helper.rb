module AnalyticsHelper
  def average_arrival_time(arrivals)
    average_time = 0
    arrivals.each do |a|

      average_time += a.time.strftime("%H").to_f * 60
      average_time += a.time.strftime("%M").to_f
    end
    Time.at(average_time / arrivals.size * 60).utc.strftime('%H h %M m')
  end
end
