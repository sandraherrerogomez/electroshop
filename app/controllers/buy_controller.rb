class BuyController < ApplicationController


  def listItems

    if params[:categoryName].nil?
      @itemsShow = Product.where("quantity > 0").all
    else
      @itemsShow = Product.where(:category => params[:categoryName]).where("quantity > 0").all
    end


    if session[:shoppingCart].nil?
      session[:shoppingCart] = Array.new
    end
    @sum = 0
    @listItem = session[:shoppingCart]
    @listItem.each {|e| @sum += e["price"]}
  end

  def viewItem
    @sum = 0
    @listItem = session[:shoppingCart]
    @listItem.each {|e| @sum += e["price"]}

    if session[:shoppingCart].nil?
      session[:shoppingCart] = Array.new
    end
    @@item = Product.find(params[:id])
    @item = @@item
  end

  def buttonClick
    session[:shoppingCart].push(Product.find(params[:itemSelected]))
    redirect_back(fallback_location: root_path)

  end

  def cleanClick
    session[:shoppingCart] = Array.new
  end



end
