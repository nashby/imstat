require 'open-uri'

module Imstat

	class Icq
		
		def self.get_status(user)
			raw_icq_status = ""
			begin
				open("http://status.icq.com/online.gif?icq=#{user}") {|f| raw_icq_status = f.base_uri.request_uri}
				rescue OpenURI::HTTPError
					raw_icq_status = "It's not a valid icq uin"
			end
			if /online0/ =~ raw_icq_status
				icq_status = "Offline"
			elsif /online1/ =~ raw_icq_status
				icq_status = "Online"
			elsif /online2/ =~ raw_icq_status
				icq_status = "N/A"
			elsif /It\'s not a valid icq uin/ =~ raw_icq_status
				icq_status = "It's not a valid icq uin"
			end
		end	
		
	end
end
