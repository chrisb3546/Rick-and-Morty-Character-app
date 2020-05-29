class Character
    attr_accessor :name, :species, :origin

    @@all=[]
    def initialize (name, species, origin)
        @name = name 
        @species = species
        @origin = origin

        @@all << self
    end

    def self.all 
        @@all
    end
  
    def self.create(name, species, origin)
        self.new(name, species, origin)
    end
    end