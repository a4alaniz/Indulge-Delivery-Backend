class Api::V1::ItemsController < ApplicationController
    skip_before_action :authorized

    def index
        items = Item.all
        render json: items, except: [:created_at, :updated_at]
    end

    def show
        item = Item.find_by(id: params[:id])
        render json: item, except: [:created_at, :updated_at]
    end

    def create 
        item = Item.create(item_params)
        render json: item, except: [:created_at, :updated_at]
    end

    private

    def item_params
        params.require(:item).permit(:price, :name, :restaurant, :uid)
    end
end
