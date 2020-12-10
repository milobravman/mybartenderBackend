class FoodGroupsController < ApplicationController

    skip_before_action :verify_authenticity_token, :only => [:create]

    def index

        orders = FoodGroup.all
        render json: orders.to_json()

    end

    def update

        order = FoodGroup.find(params[:id])
        order.update(status: "delivered")

    end

    def create 
        food = Food.find(params[:food_id])
        group = Group.find(params[:group_id])

        order = FoodGroup.create(
            food: food,
            group: group,
            status: "ordered"
        )
    end

end
