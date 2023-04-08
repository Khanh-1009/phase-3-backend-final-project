class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/products' do
    products = Product.all 
    products.to_json
  end

  get '/brands' do
    brands = Brand.all 
    brands.to_json
  end

  get '/brands/:id' do
    brand = Brand.find_by(id: params[:id])
    brand.to_json
  end

  post '/products' do
    product = Product.create(
      name: params[:name],
      image: params[:image],
      price: params[:price],
      brand_id: params[:brand_id]
    )
    product.to_json
  end
end
