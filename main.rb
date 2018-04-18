require 'sinatra'
require 'rerun'

# require './items'

set :public_folder, File.dirname(__FILE__)

get '/' do
    "Bo's Bakery"
    "Cookies, Cakes and Pies, oh my!!!"
    "This weeks specials Frecn Macaroons"


    #erb :mainpage, :layout => mainlayout
end   

get '/cake' do
    "Danyale loves cake"
    @cake = [{name: "Double Chocolate Cake",
    descritption:"Cake danish jujubes topping croissant marshmallow cookie soufflé tart. Bear claw jujubes marshmallow wafer cake apple pie lemon drops icing jelly. Cotton candy cake danish soufflé lollipop bear claw icing. Topping sweet croissant.", price:"less than it is worth", image: "https://img.taste.com.au/KoghGSzS/w643-h428-cfill-q90/taste/2016/11/homemade-chocolate-cake-85524-1.jpeg"},
    {name: "Carrot Cake", descritption:"Carrot cake gingerbread bear claw tootsie roll pie. Powder tiramisu jelly-o croissant marshmallow. Jujubes muffin lollipop cheesecake macaroon marshmallow tart. Soufflé oat cake dragée icing caramels cheesecake chupa chups ice cream.", price: "cream cheese", image: "http://www.publix.com/-/media/aprons/images/2016/06/r0002972_600x440.ashx?as=1&w=417&h=306&hash=E2CF60A403B6EE94311C3851AA748418659E77DB"},
    {name: "Plain Vanilla", descritption: "I love halvah vanilla cake I love caramels tiramisu bear claw danish sweet roll. Donut I love candy marzipan fruitcake wafer sesame snaps. Sweet roll jelly beans tootsie roll I love dragée jelly-o.", price:"empty your pockets", image: "https://s3-prod-calcmenu.unileversolutions.com/public_picture/picOriginal/P121142214121058_1.jpg"}]
        erb :caketemplate, :layout => :cakelayout
end 

get '/cookies' do
    "Danyale likes cookies"
    @cookies = [{name: "Double Chocolate Chip",
    description:"Cake danish jujubes topping croissant marshmallow cookie soufflé tart. Bear claw jujubes marshmallow wafer cake apple pie lemon drops icing jelly. Cotton candy cake danish soufflé lollipop bear claw icing. Topping sweet croissant.", price:"less than it is worth", image: "https://images-gmi-pmc.edge-generalmills.com/19894771-2df9-4c81-895e-97a6f37d13ac.jpg"},
    {name: "Sugar", description:"Carrot cake gingerbread bear claw tootsie roll pie. Powder tiramisu jelly-o croissant marshmallow. Jujubes muffin lollipop cheesecake macaroon marshmallow tart. Soufflé oat cake dragée icing caramels cheesecake chupa chups ice cream.",price:"cream cheese", image: "https://belleofthekitchen.com/wp-content/uploads/2016/03/white-chocolate-lemon-sugar-cookies-square-1.jpg"},
    {name: "Chocolate Chip", description:"I love halvah vanilla cake I love caramels tiramisu bear claw danish sweet roll. Donut I love candy marzipan fruitcake wafer sesame snaps. Sweet roll jelly beans tootsie roll I love dragée jelly-o.", price:"empty your pockets", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/2ChocolateChipCookies.jpg/220px-2ChocolateChipCookies.jpg"}]
     erb :cookiestemplate, :layout => :cookieslayout
end 

get '/muffins' do
    "Danyale enjoys muffins"
     @muffins = [{name: "Double Chocolate Chip",
    description:"Cake danish jujubes topping croissant marshmallow cookie soufflé tart. Bear claw jujubes marshmallow wafer cake apple pie lemon drops icing jelly. Cotton candy cake danish soufflé lollipop bear claw icing. Topping sweet croissant.", price:"less than it is worth", image: "https://www.mrbreakfast.com/images/979_double_chocolate_muffins.jpg"},
    {name: "Blueberry", description:"Carrot cake gingerbread bear claw tootsie roll pie. Powder tiramisu jelly-o croissant marshmallow. Jujubes muffin lollipop cheesecake macaroon marshmallow tart. Soufflé oat cake dragée icing caramels cheesecake chupa chups ice cream.", price:"cream cheese", image: "https://www.paleorunningmomma.com/wp-content/uploads/2017/07/blueberry-muffins-6.jpg"},
    {name: "Kiwi", description:"I love halvah vanilla cake I love caramels tiramisu bear claw danish sweet roll. Donut I love candy marzipan fruitcake wafer sesame snaps. Sweet roll jelly beans tootsie roll I love dragée jelly-o.", price:"empty your pockets", image: "https://i1.wp.com/www.theconfidencekitchen.com/wp-content/uploads/2015/05/kiwi-fruit-muffin-recipe-dark-chocolate-cacao-nibs-orange-zest-vegan-gluten-free-9-min1.jpg?fit=640%2C428"}]
    erb :muffinstemplate, :layout => :muffinslayout
end 


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

