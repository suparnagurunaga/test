require "rubygems"
require "watir-webdriver"


puts "Debugging 1 : starting execution 1"


# Call the login module . Login is required one time
require "./login"

# Call the custompage module to exercise all the fucntions present in the  custom page 
require "./custompage"

# Call the updates module to exercise all the funtions of the updates page 

require "./updates"

puts "Debugging 2 :  execution 2"

# get the browser handler 
browser= Login.init

# give the ip address with - in between 
ipaddress = "54-68-197-195"

# login to wordpress 

Login.login11("suparna","welcome1",browser,ipaddress)

# click on the customize button 
Login.cust(browser)

# go to the custom page and cxheck the different functionalities 
c= Customp.new(browser,ipaddress)
c.checktitle(browser)
c.checkcolor(browser)
sleep(3)

# browse through the updates tab and update details
u=Updates.new(browser,ipaddress)

#browser.close
Login.dest(browser)

puts " Ending .... "


