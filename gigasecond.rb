require 'date'
require 'time'

class Gigasecond

	def self.from(date)
		time = date.to_time
		time = time + 10**9
		time.to_date
	end

end



#date.new(2011,4,25)
#convert to time
#add 10**9
#convert back to date

#refactoring ideas:
#combining lines 7-9
#