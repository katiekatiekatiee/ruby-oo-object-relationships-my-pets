class Owner

    attr_accessor :pets
    attr_reader :name, :species

    @@all = []
    
    def initialize(name)
      @name = name
      @species = "human"
      @@all << self

      #@pets = {:dog => [], :cat => []}

    end

    def say_species
      "I am a #{@species}."
    end

    def self.all
      @@all
    end

    def self.count
      self.all.count
    end

    def self.reset_all
      self.all.clear
    end

    def cats
      Cat.all.select { |cat| cat.owner == self }
    end

    def dogs
      Dog.all.select { |dog| dog.owner == self }
    end

    def buy_cat(cat)
      Cat.new(name, self)
      

      
    end



end