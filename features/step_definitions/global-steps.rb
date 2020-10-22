wait = Selenium::WebDriver::Wait.new(timeout: 10)

# Change value of username and password in objects.rb

# Step definitions to see list of gists

# Given user already logged in
# When user clicks Account menu
# Then user select Your Gists menu

And ("list of gist is displayed") do 
    wait.until { @driver.find_element(:xpath, $all_gists).displayed? }
end