require "sinatra"
require "sinatra/reloader"
require "pry"

require_relative "./models/product"

enable :sessions

before do
  session[:cart] ||= []
end

get "/" do
  # Show the index page
  return erb :index
end

get "/products" do
  # List all the products
  @products = Product.all
  return erb :products
end

get "/cart" do
  # Show what's currently in the user's cart
  return erb :cart
end

post "/cart/products" do
	pids_in_cart = session[:cart].map {|p| p[:pid] }
	pid = params[:product_id].to_i

	pid_cart_index = pids_in_cart.index(pid)

	if pid_cart_index != nil
		# User already has this product in his cart
		quant = session[:cart][pid_cart_index][:quant]
		session[:cart][pid_cart_index] = {pid: pid, quant: quant + 1}
	else
		session[:cart] << {pid: pid, quant: 1}
	end
  # Add an item to the user's cart
  # Redirect them to the 'products' page afterwards

  redirect '/products'
end

get "/session/logout" do
  # Empty the cart
  session[:cart] = []
  redirect '/'
end