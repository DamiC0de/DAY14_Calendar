require_relative 'event'

class EventCreator
  def initialize
    puts "Salut, tu veux créer un événement ? Cool !"
    puts "Commençons. Quel est le nom de l'événement ?"
    title = gets.chomp

    puts "Super. Quand aura-t-il lieu ?"
    start_date = gets.chomp

    puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
    duration = gets.chomp.to_i

    puts "Génial. Qui va participer ? Balance leurs e-mails (séparés par des virgules)"
    attendees_string = gets.chomp
    attendees = attendees_string.split(',').map(&:strip)

    new_event = Event.new(start_date, duration, title, attendees)
    puts "Super, c'est noté, ton événement a été créé !"
  end
end

EventCreator.new
