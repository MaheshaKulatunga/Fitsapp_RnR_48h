# README
* Ruby version
  - ruby 2.3.3
  - rails 5.0.1

* Main gems used
  - Devise(4.2): Used for user account authentication
  - Bootstrap(3.3.6): Used for styling
  - Rails admin(1.0): Used to allow admin users to manage all accounts. This gem is a well documented and supported gem that provides a complete web app management dashboard.

* Configuration
  - Navigate to the fitsappRnR folder via the command line, run the following commands

  $bundle install

  $rake db:migrate

  $rake db:seed

  Default login details:
  Email: admin@test.com
  Password: 12341234

* To run

  $rails server

* How to use the app
  Navigate to localhost:3000

  Login using default details or click on 'Sign up' to create a new account. Any new account created will be a user account, that can only send and receive messages.

  The default 'admin' account will be able to access the 'Admin Area' which allows management of the entire site. The 'Admin Area' can be used to create other admin accounts.
