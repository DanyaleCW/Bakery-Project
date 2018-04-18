module BakeryItems
    attr_accessor :name, :description, :price

    def bakery
        @name = name
        @description = description
        @price = price
    end
end        

        class Cookie 
            include BakeryItems
        end    

        class Cake 
            include BakeryItems
        end    

        class Muffin 
            include BakeryItems
        end                   

cookie = Cookie.new
cake = Cake.new
muffin = Muffin.new

cookie.name = "Double Chocolate Chip"
cake.name = "Double Chocolate"
muffin.name = "Double Chocolate"

cookie.description = "The best Double Chocolate Chip cookie you will ever try."
cake.description = "The best Double Chocolate Chip cake you will ever try."
muffin.description = "The best Double Chocolate Chip muffin you will ever try."

cookie.price = 2.50 #need figure out how to show second number after decimal
cake.price = 6.00
muffin.price = 3.00

puts cookie.name
puts cake.description
puts muffin.price