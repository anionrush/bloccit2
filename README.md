# Bloccit
First Bloc web application
This app powers Bloccit at <Project URL>
## Getting Started
## Software requirements
- Rails 4.2.3
- Ruby 2.2.2p95
- PostgreSQL 9.3.x or higher
## Navigate to the Rails application
```
$ cd code/bloccit
```
## Set configuration files
```
$ cp config/database.yml.template config/database.yml
$ cp config/initializers/mail.rb.template config/initializers/mail.rb
```
Note:  You may need to edit the above files as necessary for your system.
## Create the database
 ```
 $ pgstart
 $ rake db:create
 ```
## Migrating and seeding the database
```
$ rake db:migrate
$ rake db:seed
```
## Starting the local server
```
$ rails server
   or
$ rails s
```
## Production Deployment
  ```
  $ git push heroku master
  $ heroku run rake db:migrate
  ```
## Support
Bug reports and feature requests can be filed with the rest for the Ruby on Rails project here:
* {File Bug Reports and Features}[https://github.com/<user-name>/<project-repo>/issues]
## License
<Project Name> is released under the <LICENSE-NAME> license.
## Copyright
copyright:: (c) Copyright 2015 <Project Name>. All Rights Reserved.