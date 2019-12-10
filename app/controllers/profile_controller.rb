class ProfileController < ApplicationController
  def view
    @cart = Order.where(:user => current_user.id).all
  end
end
