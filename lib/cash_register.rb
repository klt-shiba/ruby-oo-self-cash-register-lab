class CashRegister

    attr_accessor :total, :discount, :last_item

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @basket = []
    end

    def total
        @total
    end

    def add_item(title, price, quantity=1)        
        
        x = 1
        while x <= quantity
            @basket << title
            x += 1 # <- refactored this line
            @last_item = price * quantity
        end
        @total += price * quantity
    end

    def apply_discount

        if @discount >= 1 
            new_total = @total - (@total*@discount/100)
            @total = new_total
            
            "After the discount, the total comes to $#{new_total}."
        else
            "There is no discount to apply."
        end
    end
    
    def items
        @basket
    end
    def void_last_transaction
        @total = @total - @last_item
    end
end
