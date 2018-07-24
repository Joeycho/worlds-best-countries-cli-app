class WorldsBestCountries::Country
  attr_accessor :name, :description, :url

  @@all =[]
  def self.all
    @@all
  end

  def initialize
    @@all << self
  end

end
