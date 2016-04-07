# require 'open-uri'
#
# url = "http://placeimg.com/500/500/tech"

20.times do
  Product.create! do |p|
    p.name = Faker::Commerce.product_name
    p.price = Faker::Commerce.price
    p.inventory = (1..5).to_a.sample
    p.photo = "https://placeimg.com/500/500/tech"
  end
end
