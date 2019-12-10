class OrdersProduct < ApplicationRecord
  belongs_to :order ,:dependent => :delete
  belongs_to :product
end
