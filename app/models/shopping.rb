class Shopping
    attr_accessor :total, :discount, :shopping_cart, :customer_name
    @@total_count
    @@all = []

    # def total
    #     @total
    # end

    # def total=(total)
    #     @total = total
    # end

    def self.all_names
        @@all.map do |shopping_instance|
            shopping_instance.customer_name
        end
    end

    def self.all
        @@all
    end

    def self.return_all_total
        @@total_count
    end

    @@shopping_items = 0
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @shopping_cart = []
        @@shopping_items += 1
        @@total_count += 1
        @@all << self

    end

    def self.count
        @@shopping_items
    end

    def add_products(name, price, quantity = 1)
        @total = (price * quantity) + self.total
        quantity.times do 
            @shopping_cart << name
        end
    end

    def apply_discount
        if self.discount > 0
            all_discount = (self.discount*0.01).to_f * self.discount
            @total = (self.total - all_discount).to_i
            "Your total is $#{@total} after the discount"
        else
            "There is no discount on these products."
        end
    end
end