wait = Selenium::WebDriver::Wait.new(timeout: 10)

# Change value of username and password in objects.rb

# Step definitions to create secret gist

Given ("user already logged in") do 
    # Click sign in
    @driver.find_element(:xpath, $btn_sign_in).click
    expect(@driver.current_url).to include('https://github.com/login')

    # Input username
    wait.until { @driver.find_element(:id, $field_username).displayed? }
    @driver.find_element(:id, $field_username).send_keys($username)

    # Input password
    @driver.find_element(:id, $field_password).send_keys($password)

    # Click login
    sleep 1
    @driver.find_element(:xpath, $submit_login).click

    # Ensure user logged in by ensuring avatar is displayed
    wait.until { @driver.find_element(:id, $avatar).displayed? }
end


When ("user clicks add icon") do 
    wait.until { @driver.find_element(:xpath, $icon_add).displayed? }
    @driver.find_element(:xpath, $icon_add).click
end


And ("user inputs Gist description") do 
    wait.until { @driver.find_element(:xpath, $gist_desc).displayed? }
    @driver.find_element(:xpath, $gist_desc).send_keys ('Create gist by automation script')
end 


And ("user inputs filename including extension") do 
    wait.until { @driver.find_element(:xpath, $file_name).displayed? }
    @driver.find_element(:xpath, $file_name).send_keys('test.py')
end 


And ("user inputs file content") do 
    sleep 2
    wait.until { @driver.find_element(:xpath, $content_gist).displayed? }
    @driver.find_element(:xpath, $content_gist).send_keys('print ("Hello World!")')
end


And ("user creates public Gist") do 
    # Change secret to public
    @driver.find_element(:xpath, $btn_gist_option).click
    wait.until { @driver.find_element(:xpath, $public_gist).displayed? }
    @driver.find_element(:xpath, $public_gist).click
    # Create public gist
    @driver.find_element(:xpath, $btn_create_public_gist).click
end


Then ("secret gist created") do 
    # Ensure gist already created
    wait.until { @driver.find_element(:xpath, $section_discussion).displayed? }
end