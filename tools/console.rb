require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# # Startups
# startup1 = Startup.new("Skills Fund", "Heidi", "x")
# startup2 = Startup.new("Kazoo", "Person", "y")
# startup3 = Startup.new("Flatiron", "Avi", "y")


# # VCs
# venture1 = VentureCapitalist.new("Accel", 1000000000)
# venture2 = VentureCapitalist.new("Benchmark", 573899)
# venture3 = VentureCapitalist.new("Bessemer", 3754719026)
# venture4 = VentureCapitalist.new("Bessemer", 45678)
# VentureCapitalist.all
# VentureCapitalist.tres_comma_club


# # Funding Rounds
# round1 = FundingRound.new(startup1, "VC1", "Type1", 20.0)
# round2 = FundingRound.new(startup2, "VC2", "Type2", 32.0)
# round3 = FundingRound.new(startup1, "VC3", "Type3", 13.0)
# round4 = FundingRound.new(startup1, "VC3", "Type3", 13.0)
# startup1.sign_contract(venture1, "Series 3", 20000)
# startup1.sign_contract(venture2, "Series 1", 67500)

# # startup1.big_investors
# startup1.investors


uber = Startup.new("Uber", "Travis", "Transportation")
wework = Startup.new("WeWork", "Adam", "Real Estate")
flatrion = Startup.new("Flatiron School", "Avi", "Education")
lyft = Startup.new("Lyft", "Idk", "Transportation")

 # Startup.domains



#VC's
mark = VentureCapitalist.new("Mark Cuban", 4000000000)
daymond = VentureCapitalist.new("Daymond John", 800000000)
barb = VentureCapitalist.new("Barb Cooper", 3000000000)
wonderful = VentureCapitalist.new("Kevin O'Leary", 700000000)

 #FundingRounds

 funding1 = FundingRound.new("Pre-Seed", 12000, uber, mark)
 funding2 = FundingRound.new("Series-A", 450000000, wework, barb)
 uber.sign_contract(mark, "Series B", 65000)
 uber.sign_contract(daymond, "Angel", 75000)

 uber.investors
 puts uber.big_investors

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


0 #leave this here to ensure binding.pry isn't the last line