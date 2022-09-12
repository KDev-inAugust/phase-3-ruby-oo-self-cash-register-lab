require'pry'

class CashRegister
   
    attr_accessor:total
    
    def items
        @itemsArray
    end

    def initialize(discount=0)
        @itemsArray=[]
        @discount=discount
        @total=0
        @lastTransaction=0
    end

    def discount
        @discount
    end

    def total
        @total
    end

    def apply_discount
        if @discount==0
        "There is no discount to apply."
        else
        @total-=@total*discount/100
        "After the discount, the total comes to $#{@total}."
        end
    end
    
    def add_item(title, price, quantity=1)
        quantity.times{@itemsArray<<(title)}
       @total+=price*quantity
       @lastTransaction=price*quantity
    end

    def void_last_transaction
        @total-=@lastTransaction
    end
end


testreg=CashRegister.new
binding.pry
    # testreg.add_item("Lucky Charms", 4.5)
     
    #   testreg.add_item("Ritz Crackers", 5.0)
 
    #   testreg.add_item("Justin's Peanut Butter Cups", 2.50, 2)
    
