class ApiController < ApplicationController
	def all
		@clippings = Clipping.all.order(:id).reverse_order
		respond_to do |format|
			format.html { render json: @clippings }
			format.json { render json: @clippings }
		end
	end

	def create
		unless params[:content].nil?
			clipping = Clipping.create(:content => params[:content])
			clipping.save!			
		end

		@clippings = Clipping.all.order(:id).reverse_order
		respond_to do |format|
			format.html { render json: @clippings }
			format.json { render json: @clippings }
		end
	end

end
