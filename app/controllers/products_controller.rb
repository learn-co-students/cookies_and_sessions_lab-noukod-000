class ProductsController < ApplicationController
  def index
    @products = session[:cart]
  end

  def add
    cart << params[:product]
    render 'index'
  end
end
