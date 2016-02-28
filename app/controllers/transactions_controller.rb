class TransactionsController < ApplicationController
	before_action :authenticate_user!
	before_action :check_cart!
	def create
		@result = Braintree::Transaction.sale(
	          amount: current_user.cart_total_price,
	          payment_method_nonce: params[:payment_method_nonce])
	    if @result.success?
	      current_user.purchase_cart_products!
	      redirect_to afterpayments_path, notice: "Congraulations! Your transaction has been successful!"
	    else
	      flash[:alert] = "Something went wrong while processing your transaction. Please try again!"
	      gon.client_token = generate_client_token
	      render :new
	    end
	end
	def new
		gon.client_token = generate_client_token
	end
	private
		def check_cart!
		    if current_user.get_cart_products.blank?
		      redirect_to root_url, alert: "Please add some items to your cart before processing your transaction!"
		    end
		end
		def generate_client_token
		  Braintree::ClientToken.generate
		end
	  	def trans_params
	  		params.require(:transaction).permit(:amount)
	  	end
end
