wait = Selenium::WebDriver::Wait.new(timeout: 10)

# Change value of username and password in objects.rb

# Step definitions to delete gist

# Given user already logged in
# When user clicks Account menu
# And user select Your Gists menu
# And user select gist 

And ("user clicks Delete") do 
    wait.until { @driver.find_element(:xpath, $btn_delete).displayed? }
    @driver.find_element(:xpath, $btn_delete).click
end 

And ("user accept alert") do 
    alert_popup = @driver.switch_to.alert
    alert_popup.accept
end