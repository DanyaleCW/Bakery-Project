class BakeryItems
    attr_accessor :name, :description, :price

        def initialize(name, description, price)
            @name = name
            @description = description
            @price = price
        end 
end         

        class Cookie < BakeryItems
            def initialize(name, description, price)
                super
            end
        end    

        class Cake < BakeryItems
            def initialize(name, description, price)
                super
            end
        end    

        class Muffin < BakeryItems
            def initialize(name, description, price)
                super
            end
        end                   

cookie = Cookie.new("Double Chocolate Chunk", "The best Double Chocolate Chip cookie you will ever try.", 2.50)


cake = Cake.new("Chocolate Devil", "The best Double Chocolate Chip cake you will ever try.", 6.00)
muffin = Muffin.new("Double Chocolate Chip", "The best Double Chocolate Chip muffin you will ever try.", 3.00)


puts cookie.name
puts cake.description
puts muffin.price