require "rubygems"
require "watir-webdriver"

class Customp 

def  initialize(browser)
   browser.goto("http://ec2-54-148-92-146.us-west-2.compute.amazonaws.com/wordpress/wp-admin/customize.php");
end

def checktitle(browser)
   puts "Inside checktitle"
   browser.text_field(:class,'customize-control-title')
   sleep (3)
   
end

end 
