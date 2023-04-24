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

    # Cette méthode calcule et retourne la date de fin de l'événement
    def end_date
        @start_date + (@duration * 60)
    end

    # Cette méthode vérifie si l'événement est dans le passé
    def is_past?
        @start_date < Time.now
    end

    # Cette méthode vérifie si l'événement est dans le futur
    def is_future?
        !is_past?
    end

    # Cette méthode vérifie si l'événement commence bientôt (dans moins de 30 minutes)
    def is_soon?
        time_difference = @start_date - Time.now
        time_difference >= 0 && time_difference <= (30 * 60)
    end

    # Cette méthode affiche les détails de l'événement de manière propre et lisible
    def to_s
        puts ">Titre : #{@title}"
        puts ">Date de début : #{@start_date.strftime('%Y-%m-%d %H:%M')}"
        puts ">Durée : #{@duration} minutes"
        puts ">Invités : #{attendees.join(', ')}"
    end
end

