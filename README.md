# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Technical Assignment: Ordoo

## Live Version (React)
http://chongct.github.io/ordoo-react/

## How to Use

- Fork and clone this repository.
- Run `bundle install` to install dependencies.
- Run `rails db:create` to create a database.
- Run `rails db:migrate` to complete all database migrations.
- Run `rails server` to launch web server for local deployment.
- Start PostgreSQL server.
- To seed dummy data, run `rails db:seed`.


## ERD

![ERD](/app/assets/readme/ERD.png)


## Project Components

**Part 1 (Rails)**

Part 1 requires setting up of a backend Rails server. Server is deployed on Heroku. Two JSON end points have been configured.

/orders

<https://chongct-ordoo.herokuapp.com/orders>

/orders/:order_id

<https://chongct-ordoo.herokuapp.com/orders/GO124>

**Part 2 (React)**

Part 2 requires setting up of a frontend React Single Page Application to connect to the backend Rails server. Github repository can be found [here](https://github.com/chongct/ordoo-react). Application is deployed on Github Pages and can be found at <http://chongct.github.io/ordoo-react/>.


## Instructions

Instructions for technical assignment:

Part 1
<https://gist.github.com/primaulia/636900d7d32ca73c69d5aa119f6de327>

Part 2
<https://gist.github.com/primaulia/5eee4385c1a2b29092e0a8ed4e00d31d>
