# This is the finance tracker app from the Complete Ruby on Rails Developer course.
https://github.com/udemyrailscourse/finance-tracker-6/commits/master

SECTION 9: Finance tracker app
--------------------------------
* `277`
  * Self referential association - users and friends
  ----
  $ rails g model Friendship user:references

* `276`
  * Accept additional fields in app - sign up action

* `275`
  * Accept additional fields in app - edit action

* `274`
  * Modify user model - Add first and last name fields to users
  ---
  $ rails g migration add_first_last_name_to_users

* `273`
  * Add functionality to remove tracking

* `272`
  * Implement stock tracking restrictions

* `271`
  * The stocks from FE: browser

* `270`
  * Cleanup app layout

* `269`
  * Add users stock listing for tracked stocks

* `268`
  * SETUP: Users and stocks > many-to-many association
  ---
  $ rails g resource UserStock user:references stock:references
  * Create few users and few stocks (in console)
  $ Stock.create(ticker: 'AMZN', name: 'Amazon.com Inc.')
  * add stock to user
  $ user.stocks << stock

* `265` >>> `It doesn't work for me!!!!!!`
  * Handle response: Update display with JS
  * Reverted!

* `264`
  * Use Ajax for form submission

* `263`
  * Dealing with invalid and empty symbol entries

* `262`
  * Create and display Stock objects in browser

* `261`
  * Display stock price in browser

* `260`
  * Build Stock Lookup Form
  ---
  https://github.com/bokmann/font-awesome-rails

* `259`
  * Setup front-end structure for stock lookup
  ---
  $ rails g controller users my_portfolio

* `257` & `258`
  * Secure and store credentials in Rails 6
  ---
  config/credentials.yml.enc - this is pushed to GH
  config/master.key - this is NOT

  To add and read credentials:
  $ EDITOR="code --wait" rails credentials:edit

  To acces the key
  Rails.application.credentials.aws[:access_key_id]

* `256`
  * Stock lookup: build class method to lookup stock info
  ---
  self method (https://www.rubyguides.com/2020/04/self-in-ruby/)
  We don't want to push code with secure credentials to GH

* `255`
  * Create Stock model with attributes
  ---
  rails g model Stock ticker:string name:string last_price:decimal

* `254`
  * Setup and use API key to get stock data
  ---
  https://iexcloud.io
  https://github.com/dblock/iex-ruby-client

* `253`
  * Add messages and nav partial

* `252`
  * Update layout: containers for styling

* `251`
  * Add gem Devise Bootstrap Views
  ---
  https://github.com/hisea/devise-bootstrap-view
  $ bundle install
  $ rails generate devise:views:bootstrap_templates

* `249`
  * Add Bootstrap
  ---
  Video od 48:30: https://www.youtube.com/watch?v=fmyvWz5TUWg
  Zdroj: https://getbootstrap.com/docs/5.1/getting-started/introduction/#starter-template


* `248`
  * Login, logout

* `247`
  * Create users using devise
  ---
  $ rails generate devise User
  $ rails db:migrate

* `246`
  * gem 'devise'
  --- 
  https://github.com/heartcombo/devise#starting-with-rails


* `244`
  * homepage
  ---
  $ rails generate controller welcome index
