class CashRegister
    attr_reader :discount
    attr_accessor :total , :quantity

    
    def initialize(employee_discount = 0)
        @total = 0
        @discount = employee_discount
        @items = []
    end

    def cash_register 
        @total
    end

    def add_item(item, price, quantity=1)
        @quantity = quantity
        @price = price
        @total += @price *@quantity
        @quantity.times do
            @items.push(item)
        end
    end

    def apply_discount
        if @discount>0
        @total -= (@total*@discount)/100.to_f
        return "After the discount, the total comes to $#{@total.to_i}."
        else
           return "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.quantity.times do
            @total -= @price
        end
        total
    end
end
