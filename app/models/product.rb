class Product < ApplicationRecord

  def price=(other)
    self.price_in_cents = other * 100
  end

  def price
    price_in_cents / 100.0
  end
end
