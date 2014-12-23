require "rubygems"
require "watir-webdriver"

class Settings

# This program excercises the different option of settings page
# This  page has radio button, list

def  initialize(browser,ipaddress)
	   # go to the home page `
   	corepage1="http://ec2-"+ipaddress+".us-west-2.compute.amazonaws.com/wordpress/wp-admin/options-general.php"
	browser.goto(corepage1)
        sleep (5)
end

def settitle(browser)
	# check for the title 
	if    browser.text.match 'Site Title'
        # set the value to Gurunaga  from Suparna 
	        browser.text_field(:id,'blogname').set('Gurunaga')
		puts 'inside settitle'
        end 
	sleep (5)
end

def defaultuserrole(browser)
	# Check the title 
	if browser.text.match 'New User Default Role'
		# change the role to Contributor
#		puts   browser.select_list(:id,'default_role').options
		browser.select_list(:id,'default_role').select('Contributor')
		sleep (5)
	end
end 

def dateformat(browser) 
	# Check the title
	if browser.text.match 'Date Format'
		browser.radio(:value, 'Y-m-d').set
		sleep (15)
	end
end




end 
