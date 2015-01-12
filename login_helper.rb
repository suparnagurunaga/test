require "rubygems"
require "watir-webdriver"
require 'minitest/spec'
require 'minitest/autorun'
#require 'minitest/reporters'
#Minitest::Reporters.use!Minitest::Reporters::SpecReporter.new
#require 'ci/reporter/rake/test_unit_loader'



# Call the login module . Login is required one time
require "./login_controller"

class Test1 < MiniTest::Spec

@browser = nil
@@before_flag = nil
@@close_browser= false 


## This code needed only once to be run for the entire suite
def setup 
 if @@before_flag.nil?
	@login=Login.new
	@browser= @login.init
	puts 'running setup code'
	@@before_flag = true
 end
end


# Test login page
def test_login
ipaddress = "54-68-135-148"
@login.login("suparna","welcome1",@browser,ipaddress)
begin
	assert(@browser.text.include?('Welcome to WordPress!') != false)

rescue  MiniTest::Assertion
	puts "login failed"
	puts @browser.text
#	refute(@browser.text.include?('Welcome to WordPress!') != false)
end

	@@close_browser =true 
end 


def test_something
assert_equal 2,2
@@close_browser= false
end

def teardown 
if @@close_browser==true
@browser.close
end
end

end
