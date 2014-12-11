require "rubygems"
require "watir-webdriver"


browser=Watir::Browser.new :firefox

# Go to the URL in browser
browser.goto "http:/ec2-54-191-60-86.us-west-2.compute.amazonaws.com/wordpress/wp-login.php"

# Enter login info
browser.text_field(:id,'user_login').set 'suparna'
browser.text_field(:id,'user_pass').set 'welcome1'
browser.button(:name, 'wp-submit').click
sleep(3);


puts "check the message in post login page :"
puts browser.text.include? 'Welcome to WordPress!'


puts  "Click on customize your site button"
browser.link(:text,'Customize Your Site').click

sleep(3)

puts  "check the title and text in the customize your site link"
if  browser.title.match /Dashboard|Suparna/
      puts "title matched"
else 
       puts "title not matched"
end 


if  browser.text.match /.*first.*/
       puts "text  matched"
else 
   puts "text not matched"
end

sleep(3)

# click on the left side accordian "accordion-section-title_tagline"
#browser.li(:id=>'accordion-section-colors').click

#

# Logout and close the browser
# check with Zulfi 
browser.frame(:id => "frame_id_Login").a(:text,"Log out").click

sleep(5)
browser.close

