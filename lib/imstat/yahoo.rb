require 'open-uri'

module Imstat

	class Yahoo
		
		@@yahoo_online_status_image_size = 140 #bytes
		@@yahoo_offline_status_image_size = 84 #bytes
		
		def self.get_status(user)

			raw_yahoo_status = open("http://opi.yahoo.com/online?u=#{user}").read
			
			if raw_yahoo_status.size == @@yahoo_online_status_image_size
				yahoo_status = "Online"
			elsif raw_yahoo_status.size == @@yahoo_offline_status_image_size
				yahoo_status = "Offline"
			else
				yahoo_status = "WTF?"
			end
		end	

	end
end
