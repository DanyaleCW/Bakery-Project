require 'sinatra'
require 'rerun'
require 'sendgrid-ruby'
include SendGrid

require_relative './items.rb'

set :public_folder, File.dirname(__FILE__)

get '/' do
    erb :mainlayout
end   
 
get '/cake' do
     @cake = Cake.new("Double Chocolate Cake", "Chocolate cake danish jujubes topping croissant marshmallow cookie soufflé tart. Bear claw jujubes marshmallow wafer cake apple pie lemon drops icing jelly. Cotton candy cake danish soufflé lollipop bear claw icing. Topping sweet croissant.","if you have to ask.....", "https://img.taste.com.au/KoghGSzS/w643-h428-cfill-q90/taste/2016/11/homemade-chocolate-cake-85524-1.jpeg")
    @caketwo = Cake.new("Carrot Cake", "Carrot cake gingerbread bear claw tootsie roll pie. Powder tiramisu jelly-o croissant marshmallow. Jujubes muffin lollipop cheesecake macaroon marshmallow tart. Soufflé oat cake dragée icing caramels cheesecake chupa chups ice cream.", "empty your pockets","http://www.publix.com/-/media/aprons/images/2016/06/r0002972_600x440.ashx?as=1&w=417&h=306&hash=E2CF60A403B6EE94311C3851AA748418659E77DB")
    @cakethree = Cake.new("Plain Vanilla", "I love halvah vanilla cake I love caramels tiramisu bear claw danish sweet roll. Donut I love candy marzipan fruitcake wafer sesame snaps. Sweet roll jelly beans tootsie roll I love dragée jelly-o.", "less than it is worth", "https://s3-prod-calcmenu.unileversolutions.com/public_picture/picOriginal/P121142214121058_1.jpg")
    puts @cake.name
    @allcake = [@cake, @caketwo, @cakethree]
        erb :caketemplate, :layout => :main1layout
end 


get '/cookie' do
    @cookie = Cookie.new("Double Chocolate Chunk", "Cake danish jujubes topping croissant marshmallow cookie soufflé tart. Bear claw jujubes marshmallow wafer cake apple pie lemon drops icing jelly. Cotton candy cake danish soufflé lollipop bear claw icing. Topping sweet croissant.", "if you have to ask.....", "https://images-gmi-pmc.edge-generalmills.com/19894771-2df9-4c81-895e-97a6f37d13ac.jpg")


     @cookietwo = Cookie.new("Sugar", "Carrot cake gingerbread bear claw tootsie roll pie. Powder tiramisu jelly-o croissant marshmallow. Jujubes muffin lollipop cheesecake macaroon marshmallow tart. Soufflé oat cake dragée icing caramels cheesecake chupa chups ice cream.", "empty your pockets","https://belleofthekitchen.com/wp-content/uploads/2016/03/white-chocolate-lemon-sugar-cookies-square-1.jpg")

    @cookiethree = Cookie.new("Chocolate Chip", "I love halvah vanilla cake I love caramels tiramisu bear claw danish sweet roll. Donut I love candy marzipan fruitcake wafer sesame snaps. Sweet roll jelly beans tootsie roll I love dragée jelly-o.", "less than it is worth", "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/2ChocolateChipCookies.jpg/220px-2ChocolateChipCookies.jpg")


    @allcookie = [@cookie, @cookietwo, @cookiethree]
     erb :cookiestemplate, :layout => :main1layout
end 

get '/muffin' do
     @muffin = Muffin.new("Double Chocolate Chip", "Cake danish jujubes topping croissant marshmallow cookie soufflé tart. Bear claw jujubes marshmallow wafer cake apple pie lemon drops icing jelly. Cotton candy cake danish soufflé lollipop bear claw icing. Topping sweet croissant.", "if you have to ask.....", "https://www.mrbreakfast.com/images/979_double_chocolate_muffins.jpg")

    @muffintwo = Muffin.new("Blueberry", "Muffin Blue gingerbread bear claw tootsie roll pie. Powder tiramisu jelly-o croissant marshmallow. Jujubes muffin lollipop cheesecake macaroon marshmallow tart. Soufflé oat cake dragée icing caramels cheesecake chupa chups ice cream.", "empty your pockets","https://www.paleorunningmomma.com/wp-content/uploads/2017/07/blueberry-muffins-6.jpg")

    @muffinthree = Muffin.new("Kiwi", "I love halvah kiwi muffin I love caramels tiramisu bear claw danish sweet roll. Donut I love candy marzipan fruitcake wafer sesame snaps. Sweet roll jelly beans tootsie roll I love dragée jelly-o.", "less than it is worth", "https://i1.wp.com/www.theconfidencekitchen.com/wp-content/uploads/2015/05/kiwi-fruit-muffin-recipe-dark-chocolate-cacao-nibs-orange-zest-vegan-gluten-free-9-min1.jpg?fit=640%2C428")

    @allmuffin = [@muffin, @muffintwo, @muffinthree]
    erb :muffinstemplate, :layout => :main1layout
end 
 
get '/pie' do
    erb :pieslayout
end    

get '/cupcake' do
    erb :cupcakelayout
end 

get '/contact' do
    erb :contacttemplate
end   

post '/contact' do

@email = params[:email]
@opinion = params[:opinion]

from = Email.new(email: 'thecustomer@gmail.com')
to = Email.new(email: 'tianasbakery@gmail.com')
subject = 'We want your opinion'
content = Content.new(type: 'text/plain', value: @opinion)
mail = Mail.new(from, subject, to, content)

sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
response = sg.client.mail._('send').post(request_body: mail.to_json)

puts response.status_code
   puts ENV['SENDGRID_API_KEY']
end   

get '/special' do
    erb :occasiontemplate
end   

post '/special' do

@email = params[:email]
@specialoccassion = params[:specialoccassion]

from = Email.new(email: 'thecustomers@gmail.com')
to = Email.new(email: 'tianabakery@gmail.com')
subject = 'I want a cake for my special day'
content = Content.new(type: 'text/plain', value: @specialoccassion)
mail = Mail.new(from, subject, to, content)

sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
response = sg.client.mail._('send').post(request_body: mail.to_json)

puts response.status_code
   puts ENV['SENDGRID_API_KEY']
end 