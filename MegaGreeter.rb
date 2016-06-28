#/usr/bin/env ruby

class MegaGreeter
	attr_accessor :names

	def initialize(names = "World")
		@names = names
	end

	def say_hi
		if @names .nil?
			puts "There's no one here, really"
		elsif @names.respond_to?("each")
			@names.each do |name|
				puts "Piss Off #{name}!"
			end
		else
			puts "Hello #{@names}"
		end
	end

	def say_bye
		if @names.nil?
			puts "There's still noone here"
		elsif @names.respond_to?("join")
			puts "Bugger Off #{@names.join(", ")}. Never liked you anyhow."
		else
			puts "Bugger Off #{@names}. Never liked you anyhow."
		end
	end
end

if __FILE__ == $0
	mg = MegaGreeter.new
	mg.say_hi
	mg.say_bye

	mg.names = "Zeke"
	mg.say_hi
	mg.say_bye

	mg.names = ["Tom", "Dick", "Harry"]
	mg.say_hi
	mg.say_bye

	mg.names = nil
	mg.say_hi
	mg.say_bye
end
