class DrinkGroupsController < ApplicationController

    
    def index

        tab = DrinkGroup.all
        render json: tab.to_json()

    end

end
