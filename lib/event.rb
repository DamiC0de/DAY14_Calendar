require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration   = duration
    @title      = title
    @attendees  = attendees
  end

  # This method postpones the start date of the event by 24 hours
  def postpone_24h
    @start_date += (24 * 60 * 60)
  end
end
