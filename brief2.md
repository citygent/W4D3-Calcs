# Calc-It in Sinatra
Tonight, we are going to remake our JS calculators from a few weeks ago but using Sinatra.
## Basic:
Do basic arithmetic, adding, subtracting, multiplying and dividing two numbers. 
## Mortgage:
Calculate the monthly payment when given the other variables as input.
## BMI:
Calculate the BMI when given the height and weight.
## Distance:
MPG – what is the fuel efficiency of the car? £PG – how much does gas cost per gallon? 
Speed – how fast will you drive?
The output is a string: Your trip will take 3.5 hours and cost £255.33.
For every 1 MPH over 60 MPH, reduce the the MPG by 2 MPG. (i.e. a car that normally gets 30 mpg would only get 28 mpg if its speed were 61 mph. Yes this gets silly at high speed where mpg goes to zero or gets negative.)
## Something Unique
Add a unique calculation or calculator function of your own preference.
## Hints:
* You're probably going to want a route handler for each calculation type...
* ... and a separate view for each calculation type.
* You'll most likely pass in the user-supplied parameters using url params.
* It would also be nice to have some navigation links visible on every page so that the user can easily jump from one calculator type to another.

