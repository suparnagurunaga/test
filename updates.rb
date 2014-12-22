require "rubygems"
require "watir-webdriver"


# This page conntains all the fucntions of the Updates page which can be accessed by clicking on the Updates tab present in the left panel of the home page

class  Updates

# Click on the updates tab in the left in the home page and open the updates tab
def  initialize(browser,ipaddress)
   # go to the home page `
   link1 ="http://ec2-"+ipaddress+".us-west-2.compute.amazonaws.com/wordpress/wp-admin/index.php"
   puts link1 
   # click on the  updates tab
   browser.goto(link1)
   # access the link by the text . u can also access the link by using href tag
   corepage="http://ec2-"+ipaddress+".us-west-2.compute.amazonaws.com/wordpress/wp-admin/update-core.php"
   l= browser.link(:href, corepage)
   l.exists?
   l.click
   sleep (5) 
end


end 
