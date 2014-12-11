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

end 
