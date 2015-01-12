
require "rubygems"
require "watir-webdriver"
require 'minitest/autorun'
require 'minitest/unit'

module Login 


#  module to intialize broswer 
  def  self.init
	puts "Inside initalize"
        browser=Watir::Browser.new :firefox
        return  browser
  
  end

# module to destroy
  def self.dest(browser)
       browser.close
  end

# module to login 
  def self.login11(user,password,browser,ipaddress)
	puts "first :Inside login"
	# Go to the URL in browser
         address ="http://ec2-" +ipaddress +".us-west-2.compute.amazonaws.com/wordpress/wp-login.php"
	browser.goto(address)
	puts "inside login  module  "
        puts user
	# Enter login info
	browser.text_field(:id,'user_login').set user
	browser.text_field(:id,'user_pass').set password
	browser.button(:name, 'wp-submit').click

	puts "after click"

	sleep(3);


	puts "check the message in post login page :"
	puts browser.text.include? 'Welcome to WordPress!'
       
	#MiniTest::Assertions.assert_equal  'Welcome to WordPress!', 'Welcome to WordPress!'
    end



  # click on the customize button 
   def self.cust(browser)
	puts "check the message in post login page :"
	puts browser.text.include? 'Welcome to WordPress!'


	puts  "Click on customize your site button"
	browser.link(:text,'Customize Your Site').click

	sleep(3)

	puts  "check the title and text in the customize your site link"
	if  browser.title.match /Dashboard|Suparna/
      		puts "title matched"
	else
       		puts "title not matched"
	end

  end


# check whether frame link is present 

  def self.logout(browser)

	browser.frame(:id => "frame_id_Login").a(:text,"Log out").click
  end

end
