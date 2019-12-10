class CartController < ApplicationController

  def order
  @orderId = params[:id]

  end

  def buttonDelete
    @cart = session[:shoppingCart]

    deleteID = params[:itemSelected].to_i
    @cart.delete_at(deleteID)
    session[:shoppingCart] = @cart
    redirect_back(fallback_location: root_path)



  end

  def checkout
    @sum = 0
    @cart = session[:shoppingCart]
    @total = @cart.each {|e| @sum += e["price"]}


    def buy

      @sum= 0

      @cart = session[:shoppingCart]

      @cart.each {|e| @sum += e["price"]}

      if current_user == nil
        redirect_to login_path
        return false
      end

      ord = Order.create(price:@sum, user:current_user.id )



      @cart.each do |i|
        prod = Product.find(i["id"])
        prod.quantity-=1

        ord.products << prod
      end

      ord.save


      session[:shoppingCart] = Array.new

      redirect_to controller: 'cart', action: 'order' , id:ord.id


    end



  end
end
