# Global steps are defined in this file

Given ("I am on gist url") do 
    @driver.navigate.to $base_url
    expect(@driver.current_url).to include('https://gist.github.com')
end