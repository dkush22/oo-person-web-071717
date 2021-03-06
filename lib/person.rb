class Person
	attr_accessor :bank_account, :happiness, :hygiene
	attr_reader :name

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
		end

	def happiness=(happiness)
		if happiness >= 0 && happiness <= 10
			@happiness = happiness
		elsif happiness < 0
			@happiness = 0
		else @happiness = 10
		end
	end

	def hygiene=(hygiene)
		if hygiene >= 0 && hygiene <= 10
			@hygiene = hygiene
		elsif hygiene < 0
			@hygiene = 0
		else @hygiene = 10
		end
	end

	def clean?
		if @hygiene > 7
			return true
		else false
		end
	end

	def happy?
		if @happiness > 7
			return true
		else false
		end
	end

	def get_paid(salary)
		self.bank_account += salary
		return "all about the benjamins"
	end

	def take_bath
		self.hygiene += 4
		return "♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		self.hygiene -= 3
		self.happiness += 2
		return  "♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		self.happiness += 3
		friend.happiness += 3
		return "Hi #{friend.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(person, topic)
		if topic == "politics"
			self.happiness -= 2
			person.happiness -= 2
			return "blah blah partisan blah lobbyist"
		elsif topic == "weather"
			self.happiness += 1
			person.happiness += 1
			return "blah blah sun blah rain"
		else 
			return "blah blah blah blah blah"
		end
	end

end
