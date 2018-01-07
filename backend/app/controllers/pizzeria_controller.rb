class PizzeriaController < ApplicationController
	def index
		@pizzerias = Pizzeria.all

		render json: @pizzerias.to_json, status: 200
	end

	def show
		@pizzeria = Pizzeria.find(params[:id])
		@menu_items = MenuItem.where(pizzeria_id: params[:id]).all

		render json: {pizzeria: @pizzeria, menu: @menu_items}.to_json, status: 200
	end
end
