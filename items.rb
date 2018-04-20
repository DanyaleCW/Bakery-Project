class BakeryItems
    attr_accessor :name, :description, :price, :image

        def initialize(name, description, price, image)
            @name = name
            @description = description
            @price = price
            @image = image
        end 
end         

          

        class Cake < BakeryItems
            def initialize(name, description, price, image)
            @name = name
            @description = description
            @price = price
            @image = image
            end
        end 
           

        class Cookie < BakeryItems
            def initialize(name, description, price, image)
            @name = name
            @description = description
            @price = price
            @image = image
            end
        end 
        

        class Muffin < BakeryItems
            def initialize(name, description, price, image)
            @name = name
            @description = description
            @price = price
            @image = image
            end
        end                   


