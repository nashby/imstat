$:.unshift File.join(File.dirname(__FILE__), "../lib")
require "imstat"
require 'test/unit'

class TestImstat < Test::Unit::TestCase
	def test_skype_status
		assert_equal("Offline", Imstat::get_user_status(:messenger => :skype, :user => "echo"))
	end
	
	def test_normal_icq_uin
		assert_not_equal("It's not a valid icq uin", Imstat::get_user_status(:messenger => :icq, :user => "422905313"))
	end
	
	def test_wrong_icq_status
		assert_equal("It's not a valid icq uin", Imstat::get_user_status(:messenger => :icq, :user => "asf"))
	end
	
	def test_mormal_yahoo_id
		assert_not_equal("WTF?", Imstat::get_user_status(:messenger => :yahoo, :user => "cdfdsdfgsd"))		
	end
end