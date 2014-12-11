require "rubygems"
require "watir-webdriver"

class Customp 

def  initialize(browser,ipaddress)
    address ="http://ec2-" +ipaddress +".us-west-2.compute.amazonaws.com/wordpress/wp-admin/customize.php"
   puts address
   browser.goto(address);
end

def checktitle(browser)
   puts "Inside checktitle"
   browser.text_field(:class,'customize-control-title')
   sleep (3)
   
end

def checkcolor(browser)

#  open the color option from the left panel 
  puts "Inside checkcolor"
  browser.li(:id,'accordion-section-colors').h3(:class,'accordion-section-title').click
# select color 

  browser.div(:class,'wp-picker-container').a(:class,'wp-color-result').click

  sleep(5)
end

end 
