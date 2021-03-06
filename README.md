Chitter Challenge
=================
[![Build Status](https://travis-ci.org/ad13380/chitter-challenge.svg?branch=master)](https://travis-ci.org/ad13380/chitter-challenge)
[![Maintainability](https://api.codeclimate.com/v1/badges/4b5f01d41b05890e8acc/maintainability)](https://codeclimate.com/github/ad13380/chitter-challenge/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/4b5f01d41b05890e8acc/test_coverage)](https://codeclimate.com/github/ad13380/chitter-challenge/test_coverage)

The purpose of this project is to emulate the core functionality of twitter using Ruby with a Sinatra web framework and a PostgreSQL database. The PostgreSQL database stores user information and credentials allowing users to login and logout. A user's tweets (or 'peeps') are stored in a separate database and linked to the corresponding user with foreign key constraints.

Setup
-------
In order to run this application, you would need to have PostgresQL installed. To install postgresQL via Homebrew, you can run the following commands:
```
$ brew install postgresql
$ brew services start postgresql
$ psql postgres
```
Clone this repo, then run:
```
$ bundle install
```
Set up the database by running:
```
$ psql  
=# CREATE DATABASE chitter;
=# \c chitter;
```
Then follow the commands outlined in the ```.sql``` files located in the subdirectory ```./db/migrations/```

To run this app, enter
```
rackup
```
And visit ```localhost:9292``` in your browser

User Stories:
-------

- [x] Story 1

```
As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter
```

- [x] Story 2

```
As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order
```

- [x] Story 3 

```
As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made
```

- [x] Story 4 
```
As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter
```

- [x] Story 5 
```
As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter
```

- [x] Story 6 
```
As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter
```



