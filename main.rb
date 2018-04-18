require 'sinatra'
require 'rerun'
require './items'

get '/' do
    "Danyale is working hard"
end   

get '/cake' do
    "Danyale loves cake"
end 

get '/cookies' do
    "Danyale likes cookies"
end 

get '/muffins' do
    "Danyale enjoys muffins"
end 

#Try to make the pages dynamically
# get '/:type' do
#  if params[:type]  == "nerdy"
#     joke = RubyJoke.new
#     @joke_nerdy = joke.get_joke({limitTo: ['nerdy']})
#     erb :nerdy
#  elsif
#     joke = RubyJoke.new
#     @joke_nsfw = joke.get_joke({limitTo: ['explicit']})
#     erb :nsfw
#  elsif  
#     joke = RubyJoke.new
#     @joke_surprise = joke.get_joke({limitTo: ['explicit', 'nerdy']})
#     erb :surprise
#  end
# end

# Use these classes to create 1 object per item being sold (e.g if you have 3 cookies for sale you would create 3 Cookie objects based on one Cookie class)
# Each item should have the following attributes
# description
# price
 

# These objects represent digital versions of cookies, so now use these objects as data that you can utilize when displaying information about your cookies, cakes and muffins.

# Try using these objects to

# display information on price and description on the subcategory pages
# generate the catalog email to send to the requesting user
 

# Completion Requirements:

# fulfill the design needs of the user
# it must look and feel like a bakery website
# have a front page that links out to subcategory pages
# have a page listing all cookies sold
# have a page listing all muffins sold
# have a page listing all cakes sold
# use the Sendgrid API to send an email to the user’s email with a catalog of all items sold
# API key should be stored in an environment variable
# Rubric
