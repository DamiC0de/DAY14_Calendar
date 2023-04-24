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
User.new("julie@email.com", 32)
User.new("jean@jean.com", 23)
User.new("claude@claude.com", 75)
  
  
# # Affichage de toutes les instances de la classe User stockées dans @@all_users
# puts User.all.inspect



event = Event.new("2023-04-24 14:00", 30, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])

# puts "Original Start Date: #{event.start_date.inspect}"

# event.postpone_24h
# puts "Postponed Start Date: #{event.start_date.inspect}"

# event.end_date
# puts "Date de fin : #{event.end_date.inspect}"

# event.is_past?
# puts "L'événement est-il passé ? #{event.is_past?}"

# event.is_future?
# puts "L'événement est-il dans le futur ? #{event.is_future?}"

# event.is_soon?
# puts "L'événement commence-t-il bientôt ? #{event.is_soon?}"

event.to_s

#On cherche un des user à partir de son e-mail
user_1 = User.find_by_email("claude@claude.com")

#On peut ensuite utiliser ce user comme on veut. Par exemple pour afficher son age:
puts "Voici l'age du User trouvé : #{user_1.age}"