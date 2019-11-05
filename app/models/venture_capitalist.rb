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

    def offer_contract(startup, type_of_investment, amount_invested)
        FundingRound.new(startup, self, type_of_investment, amount_invested)
    end

    def funding_rounds
        #returns an array of all funding rounds for that venture capitalist
        FundingRound.all.select { |round| round.venture_capitalist == self }
    end

    def portfolio
        # Returns a unique list of all startups this venture capitalist has funded
        arr_of_rounds = FundingRound.all.select { |round| round.venture_capitalist == self }
        arr_of_rounds.map { |each_round| each_round.startup }.uniq
    end

    def biggest_investment
        #returns the largest funding round given by this venture capitalist
        investments_arr = self.funding_rounds
        investments_arr.max_by { |each_round| each_round.investment }
    end

    def invested
        #given a domain string, returns the total amount invested in that domain
        
    end

end
