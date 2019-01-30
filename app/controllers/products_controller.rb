class ProductsController < ApplicationController
 def index
   session[:id]="me"
   @cart=self.cart
 end

 def add
   cart=self.cart
   cart.push(params[:product])
   redirect_to products_path
 end
end
