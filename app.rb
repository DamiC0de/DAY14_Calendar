# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.

# Création d'une nouvelle instance de la classe User avec l'email et l'âge de Julie
julie = User.new("julie@email.com", 32)
  
  
# Affichage de toutes les instances de la classe User stockées dans @@all_users
puts User.all.inspect


# This method postpones the start date of the event by 24 hours
def postpone_24h
    @start_date += (24 * 60 * 60)
end


event = Event.new("2023-04-24 14:00", 30, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
puts "Original Start Date: #{event.start_date.inspect}"

event.postpone_24h
puts "Postponed Start Date: #{event.start_date.inspect}"
