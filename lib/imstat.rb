$:.unshift File.join(File.dirname(__FILE__), "imstat")

require "skype"
require "icq"

module Imstat
	
	def self.get_user_status(options)
		
		case options[:messenger]
			when :skype
				skype_status = Imstat::Skype::get_status(options[:user])
			when :icq
				icq_status = Imstat::Icq::get_status(options[:user])
		end
		
	end		
end