class ProductsController < ApplicationController
    def index
        cart = session[:cart]
    end

    def create
        cart = session[:cart] || []
        cart << params[:product]
        session[:cart] = cart
    end


end