# README

[![Code Climate](https://codeclimate.com/github/gil27/juice/badges/gpa.svg)](https://codeclimate.com/github/gil27/juice)

## Search Stats Analyct

Warning: Do it while having a fresh *juice* or a beer :sunglasses:

### Getting Started
You will need to have redis up and running :)

clone this app: `git clone git@github.com:gil27/juice.git`
then: `bin/setup`

If you want you can use the seed data to check a live example.
run `rake db:seed`
run `rake test` to run the test suite
run `bundle exec sidekiq -C config/sidekiq.yml`
run `rails server`

Obs: This is just a sample app!
