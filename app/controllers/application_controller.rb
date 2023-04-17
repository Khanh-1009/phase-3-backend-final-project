class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Brands Routes
  get '/brands' do
    brands = Brand.all 
    brands.to_json(include: :products)
  end

  get '/brands/:id' do
    brand = Brand.find_by(id: params[:id])
    if brand
      brand.to_json(include: :products)
    else
      "404 - Brand not found"
    end
  end

  post '/brands' do
    brand = Brand.create(
      name: params[:name]
    )
    brand.to_json
  end

  # Products Routes
  get '/products' do
    products = Product.all 
    products.to_json
  end

  post '/products' do
    product = Product.create(params)
    # product = Product.create(
    #   name: params[:name],
    #   image: params[:image],
    #   price: params[:price],
    #   brand_id: params[:brand_id]
    # )
    product.to_json
  end

  patch '/products/:id' do
    product = Product.find(params[:id])
    product.update(
      price: params[:price]
    )
    product.to_json
  end

  delete '/products/:id' do
    product = Product.find_by(id: params[:id])
    product.destroy
    product.to_json
  end
end
