class OrdersController < ApplicationController
  def index
    if current_user
      orders = Order.where(user_id: current_user.id).all.order(id: :desc)
      render json: {orders: orders}.to_json, status: 200
    else
      render json: {error: 'not logged in'}.to_json, status: 401
    end
  end

  def create
    if current_user
      # Create description from the order
      description = params[:pizzas].map { |pi| "#{pi['title']}, #{pi['price']} kr" }.join(', ')
      # Sum the price of the order
      price = params[:pizzas].map { |pi| pi['price'].to_i }.reduce(0, :+)

      order = Order.new(
        user_id: current_user.id,
        pizzeria_id: params[:pizzas].first['pizzeria_id'],
        description: description,
        number_of_pizzas: params[:pizzas].count,
        amount: price
      )

      if order.save
        render json: {order: order}.to_json, status: 200
      else
        render json: {errors: order.errors}.to_json, status: 400
      end
    else
      render json: {error: 'not logged in'}.to_json, status: 401
    end
  end
end
