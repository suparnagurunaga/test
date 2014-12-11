require "rubygems"
require "watir-webdriver"


puts "starting execution "

require "./login"
require "./custompage"

puts "starting execution 2"

# get the browser handler 
browser= Login.init

ipaddress = "54-148-92-146"

# login to wordpress 

Login.login11("suparna","welcome1",browser,ipaddress)

# click on the customize button 
Login.cust(browser)

# go to the custom page 
c= Customp.new(browser,ipaddress)
c.checktitle(browser)

#`browser.close
Login.dest(browser)

puts "starting execution 3"


