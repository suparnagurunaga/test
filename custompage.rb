require "rubygems"
require "watir-webdriver"

class Customp 

# This file has all the functions related  to the custome page
# This page uses the browser object from the main 
#This script should be called  after the login

# Click on the customize button present in the home page and open the  custome page 
def  initialize(browser,ipaddress)
    address ="http://ec2-" +ipaddress +".us-west-2.compute.amazonaws.com/wordpress/wp-admin/customize.php"
   puts address
   browser.goto(address);
end


# check the title of the custom page 

def checktitle(browser)
   puts "Inside checktitle"
   browser.text_field(:class,'customize-control-title')
   sleep (3)
   
end


# Exercise the color module in the custom page 

def checkcolor(browser)

#  open the color option from the left panel 
  puts "Inside checkcolor"
  browser.li(:id,'accordion-section-colors').h3(:class,'accordion-section-title').click
# select color 

  browser.div(:class,'wp-picker-container').a(:class,'wp-color-result').click

  sleep(5)
end

end 
