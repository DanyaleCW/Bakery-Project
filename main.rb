require 'sinatra'
require 'rerun'
require_relative './items.rb'

set :public_folder, File.dirname(__FILE__)

get '/' do
    erb :mainlayout
end   
 
get '/cake' do
    "Danyale loves cake"
    @cake = [{name: "Double Chocolate Cake",
    description:"Chocolate cake danish jujubes topping croissant marshmallow cookie soufflé tart. Bear claw jujubes marshmallow wafer cake apple pie lemon drops icing jelly. Cotton candy cake danish soufflé lollipop bear claw icing. Topping sweet croissant.", price:"if you have to ask.....", image: "https://img.taste.com.au/KoghGSzS/w643-h428-cfill-q90/taste/2016/11/homemade-chocolate-cake-85524-1.jpeg"},
    {name: "Carrot Cake", description:"Carrot cake gingerbread bear claw tootsie roll pie. Powder tiramisu jelly-o croissant marshmallow. Jujubes muffin lollipop cheesecake macaroon marshmallow tart. Soufflé oat cake dragée icing caramels cheesecake chupa chups ice cream.", price: "empty your pockets", image: "http://www.publix.com/-/media/aprons/images/2016/06/r0002972_600x440.ashx?as=1&w=417&h=306&hash=E2CF60A403B6EE94311C3851AA748418659E77DB"},
    {name: "Plain Vanilla", description: "I love halvah vanilla cake I love caramels tiramisu bear claw danish sweet roll. Donut I love candy marzipan fruitcake wafer sesame snaps. Sweet roll jelly beans tootsie roll I love dragée jelly-o.", price:"less than it is worth", image: "https://s3-prod-calcmenu.unileversolutions.com/public_picture/picOriginal/P121142214121058_1.jpg"}]
        erb :caketemplate, :layout => :cakelayout
end 

get '/cookies' do
    "Danyale likes cookies"
    @cookies = [{name: "Double Chocolate Chip",
    description:"Cake danish jujubes topping croissant marshmallow cookie soufflé tart. Bear claw jujubes marshmallow wafer cake apple pie lemon drops icing jelly. Cotton candy cake danish soufflé lollipop bear claw icing. Topping sweet croissant.", price:"if you have to ask.....", image: "https://images-gmi-pmc.edge-generalmills.com/19894771-2df9-4c81-895e-97a6f37d13ac.jpg"},
    {name: "Sugar", description:"Carrot cake gingerbread bear claw tootsie roll pie. Powder tiramisu jelly-o croissant marshmallow. Jujubes muffin lollipop cheesecake macaroon marshmallow tart. Soufflé oat cake dragée icing caramels cheesecake chupa chups ice cream.",price:"empty your pockets", image: "https://belleofthekitchen.com/wp-content/uploads/2016/03/white-chocolate-lemon-sugar-cookies-square-1.jpg"},
    {name: "Chocolate Chip", description:"I love halvah vanilla cake I love caramels tiramisu bear claw danish sweet roll. Donut I love candy marzipan fruitcake wafer sesame snaps. Sweet roll jelly beans tootsie roll I love dragée jelly-o.", price:"less than it is worth", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/2ChocolateChipCookies.jpg/220px-2ChocolateChipCookies.jpg"}]
     erb :cookiestemplate, :layout => :cookieslayout
end 

get '/muffins' do
    "Danyale enjoys muffins"
     @muffins = [{name: "Double Chocolate Chip",
    description:"Cake danish jujubes topping croissant marshmallow cookie soufflé tart. Bear claw jujubes marshmallow wafer cake apple pie lemon drops icing jelly. Cotton candy cake danish soufflé lollipop bear claw icing. Topping sweet croissant.", price:"if you have to ask.....", image: "https://www.mrbreakfast.com/images/979_double_chocolate_muffins.jpg"},
    {name: "Blueberry", description:"Carrot cake gingerbread bear claw tootsie roll pie. Powder tiramisu jelly-o croissant marshmallow. Jujubes muffin lollipop cheesecake macaroon marshmallow tart. Soufflé oat cake dragée icing caramels cheesecake chupa chups ice cream.", price:"empty your pockets", image: "https://www.paleorunningmomma.com/wp-content/uploads/2017/07/blueberry-muffins-6.jpg"},
    {name: "Kiwi", description:"I love halvah vanilla cake I love caramels tiramisu bear claw danish sweet roll. Donut I love candy marzipan fruitcake wafer sesame snaps. Sweet roll jelly beans tootsie roll I love dragée jelly-o.", price:"less than it is worth", image: "https://i1.wp.com/www.theconfidencekitchen.com/wp-content/uploads/2015/05/kiwi-fruit-muffin-recipe-dark-chocolate-cacao-nibs-orange-zest-vegan-gluten-free-9-min1.jpg?fit=640%2C428"}]
    erb :muffinstemplate, :layout => :muffinslayout
end 

# get '/playaround' do 
#  @cookie = Cookie.new("Double Chocolate Chunk", "The best Double Chocolate Chip cookie you will ever try.", 2.50)

# @cake = Cake.new("Chocolate Devil", "The best Double Chocolate Chip cake you will ever try.", 6.00)

# @muffin = Muffin.new("Double Chocolate Chip", "The best Double Chocolate Chip muffin you will ever try.", 3.00)

# @x = [@muffin, @cake]

# end
