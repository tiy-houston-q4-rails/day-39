Week 8 - Lab
============


Objective:
* Combine JavaScript, Mapping, and APIs to develop super cool happy times pizza
  tracker


Pizzazer
--------

1. Take your Map application and change to load its data via JSON, instead of
   `@points.each do`
2. Return your json points on the endpoint `/api/pizza_joints`
3. Create an endpoint that allows you to post JSON to `/api/pizza_joints` to create a
   PizzaJoint
4. Make sure to use the ruby geocoder to take the address into lat/lng
5. Create and host on heroku, and have the map show up with https

To test that the api works, I'll be using the ruby program in `client_joint.rb`. You should too.

If I refresh the browser, it should then show 10 new pizza joints.

Extras!
------

* Create a map at mapbox.com (free)
* Choose a different tile layer
* Choose a different pin image (like a pizza) for the pins
* Create a form that submits via jquery to `/api/pizza_joints`

