require "rubygems"
require "watir-webdriver"
require 'minitest/autorun'


puts "Debugging 1 : starting execution 1"


# Call the login module . Login is required one time
require "./login"

# Call the custompage module to exercise all the fucntions present in the  custom page 
require "./custompage"

# Call the updates module to exercise all the funtions of the updates page 
require "./updates"


# Call the setting module 
require "./settings"

browser= Login.init

# give the ip address with - in between 
ipaddress = "54-68-135-148"

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
u.pagehead(browser)
u.selectplugin(browser)

# Browse through the setting page
s=Settings.new(browser,ipaddress)
s.settitle(browser)
s.defaultuserrole(browser)
s.dateformat(browser)

#browser.close
Login.dest(browser)

puts " Ending .... "


