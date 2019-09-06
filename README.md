# Order Tracking

A simple order tracking application for baristas. It's objectives are:

1. Baristas can register their coffee shop
2. Customers can submit their name, order type and time of arrival to a specific coffee shop
3. Baristas can see the orders organized by pickup time for their coffee shop

This application is built to run in a docker container, so that the build is portable.

## Setup

1. Run `docker-compose build` to set up the application in a docker container.
2. Run `docker-compose run web rails console` to open the console to test it or simply `docker-compose run web` to run the server.
