# README

A super-simple Rails app for per-podcast financial contriubtions
via Stripe.

Contributions are welcome!

### Base system

* Rails 5.1.0
* Ruby 2.4.1
* [pg](https://github.com/ged/ruby-pg) for `ActiveRecord`
* The app is preconfigured for Google Analytics, just add `GOOGLE_ANALYTICS_ID` to the environment.

### General

* [active_model_serializers](https://github.com/rails-api/active_model_serializers)
* [draper](https://github.com/drapergem/draper)
* [figaro](https://github.com/laserlemon/figaro)
* [pundit](https://github.com/elabs/pundit)
* [secureheaders](https://github.com/twitter/secureheaders)
* [sidekiq](https://github.com/mperham/sidekiq)

### Frontend

All of these are managed by `yarn`.

* [bootstrap4](https://www.npmjs.com/package/bootstrap-v4-dev)
* [jquery](https://www.npmjs.com/package/jquery)

### Development

* [foreman](https://github.com/ddollar/foreman)
* [newrelic_rpm](https://github.com/newrelic/rpm)
* [pry](https://github.com/rweng/pry-rails)
* [pry-byebug](https://github.com/deivid-rodriguez/pry-byebug)
* [pry-doc](https://github.com/pry/pry-doc)
* [RuboCop](https://github.com/bbatsov/rubocop)

### Test

* [bullet](https://github.com/flyerhzm/bullet)
* [bundler-audit](https://github.com/rubysec/bundler-audit)
* [capybara](https://github.com/teamcapybara/capybara)
* [database_cleaner](https://github.com/DatabaseCleaner/database_cleaner)
* [devise](https://github.com/plataformatec/devise)
* [factory_girl_rails](https://github.com/thoughtbot/factory_girl_rails)
* [high_voltage](https://github.com/thoughtbot/high_voltage)
* [memory_profiler](https://github.com/SamSaffron/memory_profiler)
* [poltergeist](https://github.com/teampoltergeist/poltergeist)
* [rack-mini-profiler](https://github.com/MiniProfiler/rack-mini-profiler)
* [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)
* [spring-commands-rspec](https://github.com/jonleighton/spring-commands-rspec)
* [webmock](https://github.com/bblimke/webmock)

### Production

* [airbrake](https://github.com/airbrake/airbrake)
* [heroku-deflater](https://github.com/romanbsd/heroku-deflater)
* [lograge](https://github.com/roidrage/lograge)
* [rails_12factor](https://github.com/heroku/rails_12factor)
* [rake-timeout](https://github.com/heroku/rack-timeout)

## Removed

The following default Rails gems have been removed:

* [coffee-rails](https://github.com/rails/coffee-rails)
* [jbuilder](https://github.com/rails/jbuilder)
