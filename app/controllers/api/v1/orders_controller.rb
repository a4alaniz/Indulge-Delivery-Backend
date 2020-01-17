class Api::V1::OrdersController < ApplicationController
    skip_before_action :authorized

    def index
        orders = Order.all
        render :json=> orders.to_json(:include =>
          {:order_items =>
            {:include => :item}})
    end

    def show
        order = Order.find_by(params[:id])
        render :json=> order.to_json(:include =>
        {:order_items =>
            {:include => :item}})
    end

    def create
        order = Order.create(order_params)

        render :json => order.to_json(:include => 
        {:order_items =>
            {:include => :item}})
    end

    private 
    def order_params
        params.require(:order).permit(:user_id, :street, :city, :state, :zipcode, :order_total, order_item_attributes: [:item_id])
    end


end
