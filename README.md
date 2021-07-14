# README

Ruby 2.7.1

Rails 6.1.4

DB Postgres

Preview: https://tv-series-rating-app.herokuapp.com/

In order to import the reviews and tv_series from csv run the rake task 

1. rake db:seed => It will create the roles i.e. Actor and Director
2. rake tv_series:import
3. rake reviews:import

Used Kaminari for pagination.
Implemented Search functionality for TV series that an actor has acted in.
Unable to write the unit test cases. Time wraps up
