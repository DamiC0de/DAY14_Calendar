# Déclaration de la classe User
class User
    # Création des accesseurs pour les variables d'instance @email et @age
    attr_accessor :email, :age
  
    # Initialisation de la variable de classe @@all_users en tant que tableau vide
    @@all_users = []
  
    # Méthode d'initialisation pour chaque nouvelle instance de la classe User
    def initialize(email, age)
      # Assignation des paramètres email et age aux variables d'instance
      @email = email
      @age = age
      # Ajout de l'instance courante (self) au tableau @@all_users
      @@all_users << self
    end
  
    # Méthode de classe pour récupérer le tableau contenant toutes les instances de User
    def self.all
      # Renvoie le tableau @@all_users
      @@all_users
    end
  end
  
