require_relative "../models/product"

Product.create([
  { :product_name => "Chocolate Chip Cookies", :description => "Ooey. Gooey. Delicious", :image => "http://nativemobile.com/wordpress/wp-content/uploads/2014/05/Verizons-Mobile-%E2%80%98Cookies%E2%80%99-Could-Take-the-Cake.jpg", :price => "4.75" },
  { :product_name => "Nilla Wafers", :description => "Pretty darn good - if you like vanilla", :image => "http://upload.wikimedia.org/wikipedia/en/2/2d/Nilla-Wafers-Box-Small.jpg", :price => "3.50" },
  { :product_name => "Oatmeal Raisin Cookies", :description => "Om nom nom", :image => "http://s3.amazonaws.com/gmi-digital-library/6ef2e27f-a9e5-43a4-ae2b-861c53e3ba73.jpg", :price => "2.99" },
])