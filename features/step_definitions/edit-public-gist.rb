wait = Selenium::WebDriver::Wait.new(timeout: 10)

# Change value of username and password in objects.rb

# Step definitions to edit gist

# Given ("user already logged in")

When ("user clicks Account menu") do 
    @driver.find_element(:xpath, $account_menu).click
end

And ("user select Your Gists menu") do 
    wait.until { @driver.find_element(:xpath, $your_gist_menu).displayed? }
    @driver.find_element(:xpath, $your_gist_menu).click
end 

And ("user select gist") do 
    wait.until { @driver.find_element(:xpath, $select_gist).displayed? }
    @driver.find_element(:xpath, $select_gist).click
end 

And ("user clicks Edit") do 
    wait.until { @driver.find_element(:xpath, $btn_edit).displayed? }
    @driver.find_element(:xpath, $btn_edit).click
end 

And ("user edit description") do 
    wait.until { @driver.find_element(:xpath, $gist_desc).displayed? }
    @driver.find_element(:xpath, $gist_desc).clear()
    @driver.find_element(:xpath, $gist_desc).send_keys ('Edited gist')
end 

And ("user edit file name") do 
    wait.until { @driver.find_element(:xpath, $file_name).displayed? }
    @driver.find_element(:xpath, $file_name).clear()
    @driver.find_element(:xpath, $file_name).send_keys('edited-test.py')
end 

And ("user edit content") do 
    wait.until { @driver.find_element(:xpath, $content_gist).displayed? }
    @driver.find_element(:xpath, $content_gist).clear()
    @driver.find_element(:xpath, $content_gist).send_keys('This content already edited')
end

And ("user updates existing gist") do 
    wait.until { @driver.find_element(:xpath, $submit_edit).displayed? }
    @driver.find_element(:xpath, $submit_edit).click
end