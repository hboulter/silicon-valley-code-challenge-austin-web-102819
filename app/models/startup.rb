class Startup
    attr_accessor :name, :investors
    attr_reader :founder, :domain

    @@all = []
    @@all_domains = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
        @@all_domains << domain
    end

    def pivot(name, domain)
        @name = name
        @domain = domain
    end

    def self.all
        @@all
    end

    def self.find_by_founder(founder)
        @@all.detect {|x| x.founder == founder}
    end

    def self.domains
        @@all_domains.uniq
    end

    def sign_contract(venture_capitalist, type_of_investment, amount_invested)
        FundingRound.new(self, venture_capitalist, type_of_investment, amount_invested)
    end

    def num_funding_rounds
        FundingRound.all.select { |round| round.startup == self }.count
    end

    def total_funds
        startups_array = FundingRound.all.select { |x| x.startup == self }
        startups_array.reduce(0) { |sum, round| sum + round.investment }
    end

    def investors
        xyz = FundingRound.all.select { |x| x.startup == self }
        xyz.map { |y| y.venture_capitalist }.uniq
        
    end

    def big_investors
        investors = self.investors
        # startups_array = FundingRound.all.select { |x| x.startup == self }
        # investors = startups_array.map { | round | round.venture_capitalist }.uniq
        investors.select { |y| y.total_worth > 1000000000 }
    end

end

