<a href="https://travis-ci.com/CodeLanka/ElePath-Ruby"><img src="https://travis-ci.com/CodeLanka/ElePath-Ruby.svg?branch=master"></a> [![Codacy Badge](https://api.codacy.com/project/badge/Grade/34ae4cad8535410bafc5e4c46c1e72ee)](https://www.codacy.com/app/pamuditha/ElePath-Ruby?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=CodeLanka/ElePath-Ruby&amp;utm_campaign=Badge_Grade)
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2FCodeLanka%2FElePath-Ruby.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2FCodeLanka%2FElePath-Ruby?ref=badge_shield)

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:


* Ruby version

## System dependencies

## Configuration

## Database creation
* **Step 1:** Open database.yml in config folder and set the configurations for the database
* **Step 2:** Run command ```$ rake db:create``` to create the database from the root folder of the project

## Database initialization
* **Step 1:** cd into the project folder
* **Step 2:** Run the command ```$ rails db:migrate```

## How to run the test suite

## Services (job queues, cache servers, search engines, etc.)

* mysql 5.7

## Running locally with docker-compose

Start the app
```docker-compose up -d```

Check logs
```docker-compose logs```

Apply database migration
```docker-compose run --rm app rails db:create db:migrate db:seed```

## Deployment instructions
* **Step 1:** Fork form ElePath-Ruby repository and clone it to your desktop
* **Step 2:** Move into the cloned folder
* **Step 3:** Deploy localy by running the command ```$ rails server```
* **Step 3:** Go to localhost:3000 to see the app running


* ...

## License
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2FCodeLanka%2FElePath-Ruby.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2FCodeLanka%2FElePath-Ruby?ref=badge_large)
