class WelcomeController < ApplicationController
  def view
    if session[:shoppingCart].nil?
      session[:shoppingCart] = Array.new
    end
  end
end
