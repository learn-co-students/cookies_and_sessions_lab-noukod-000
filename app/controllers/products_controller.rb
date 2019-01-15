class ProductsController < ApplicationController
  def index
  end

  def add
    cart << params[:product]
    render action: 'index'
  end
end
