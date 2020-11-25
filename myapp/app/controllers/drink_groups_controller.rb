class DrinkGroupsController < ApplicationController


    skip_before_action :verify_authenticity_token, :only => [:create]
    
    def index

        tab = DrinkGroup.all
        render json: tab.to_json()

    end

    def create 
        drink = Drink.find(params[:drink_id])
        group = Group.find(params[:group_id])

        tab = DrinkGroup.create(
            drink: drink,
            group: group,
        )
    end

end
