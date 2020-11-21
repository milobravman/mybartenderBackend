class FoodsController < ApplicationController


    def index

        menu = Food.all
        render json: menu.to_json()

    end


end
