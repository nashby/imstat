require 'open-uri'
require "rexml/document"

module Imstat

	class Skype
		
		def self.get_status(user)
			skype_xml_status = REXML::Document.new open("http://mystatus.skype.com/#{user}.xml").read
			status = Hash.new
			REXML::XPath.each(skype_xml_status, "//presence") do |el| 
				status[el.attributes["xml:lang"].to_sym] = el.text
			end
			status[:en]
		end	
		
	end
end
