class AnalyticsController < ApplicationController
  def index
    @arrivals = ArrivalTime.all
  end
end
