class OrdersController < ApplicationController

    def index 
        orders = Order.all 
        render json: orders
    end

    def show
        render json: find_order, status: :ok
    end

    def create
        render json: Order.create(order_params)
    end



    private

    def order_params
        params.permit(:total_price, :total_quantity, :product_id)
    end

    def find_order
        order = Order.find(params[:id])
    end


end
