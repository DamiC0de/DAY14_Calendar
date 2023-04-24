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

    # Méthode de classe pour trouver un utilisateur par adresse e-mail
    def self.find_by_email(email)
      # Recherche dans le tableau @@all_users l'instance dont l'attribut @email correspond à l'adresse e-mail donnée
      user_found = @@all_users.find { |user| user.email == email }
      # Retourne l'objet User trouvé ou nil si aucun utilisateur ne correspond
      user_found
    end
  end
  
