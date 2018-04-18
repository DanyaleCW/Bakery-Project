class BakeryItems
    attr_accessor :name, :description, :price

        def initalize(name, description, price)
            @name = name
            @description = description
            @price = price
    end 
end         

        class Cookie < BakeryItems
            
        end    

        class Cake < BakeryItems
            
        end    

        class Muffin < BakeryItems
            
        end                   

cookie = Cookie.new("Double Chocolate Chunk", "The best Double Chocolate Chip cookie you will ever try.", 2.50)
cake = Cake.new("Chocolate Devil", "The best Double Chocolate Chip cake you will ever try.", 6.00)
muffin = Muffin.new("Double Chocolate Chip", "The best Double Chocolate Chip muffin you will ever try.", 3.00)


puts cookie.name
puts cake.description
puts muffin.price