require "rubygems"
require "watir-webdriver"


# This page conntains all the fucntions of the Updates page which can be accessed by clicking on the Updates tab present in the left panel of the home page
# This has checkbox element


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

# Check the page heading

def  pagehead(browser)
         puts "inside pagehead"
  #	Checking for text in a page
	 text1='WordPress Updates'
	 if browser.text.include?(text1)
	 puts text1+" exists"
	 end
end


# click on  select all checkbox to select the available plugin for update
def selectplugin(browser)
        browser.checkbox(:id, "plugins-select-all").set
        sleep (5)
end

# clear the checkbox select all to unselect the plugins
def deselectplugin(browser)
        browser.checkbox(:id,"plugins-select-all").clear
end 


end
