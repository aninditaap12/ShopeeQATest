# QA Engineer Test - Shopee
This repo was created by Anindita Ayu Pratiwi to fulfil the requirements of Shopee QA Engineer test. This project is using Selenium Cucumber with Ruby to automate Gist (create, edit, delete, and get list of Gists). 

## Prerequisites:
1. Ruby 2.6.3 or higher
2. Selenium WebDriver
3. Cucumber

## Setup before running the test scripts
1. Go to Gist_QA directory
2. Duplicate `env.default` to `env.rb`
3. Adjust `username` and `password` in `Gist_QA/features/support/objects.rb`

## How to run the scripts?
1. To run `Create public gist` story, type `cucumber -t @create-public-gist` on terminal
2. To run `Edit an existing gist` story, type `cucumber -t @edit-existing-gist` on terminal
3. To run `Delete an existing gist` story, type `cucumber -t @delete-existing-gist` on terminal
4. To run `Get all list of Gist` story, type `cucumber -t @get-list` on terminal

### Author:
1. Name: Anindita Ayu Pratiwi
2. Github: https://github.com/aninditaap12