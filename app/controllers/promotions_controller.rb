class PromotionsController < ApplicationController
	def new
		@promo = Promotion.new
	end
	def create
		@promo = Promotion.new(promotion_params)
	end
	private 
	def promotion_params
		params.require(:promotion).permit(:name,:discount,:start,:end)
	end
end
