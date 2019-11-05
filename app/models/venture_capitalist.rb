class VentureCapitalist
    attr_accessor :name, :total_worth

    @@all = []

    def initialize(name, number)
        @name = name
        @total_worth = number
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_comma_club
        @@all.select {|x| x.total_worth >= 1000000000}
    end

end
