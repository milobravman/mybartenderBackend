class DrinksController < ApplicationController


    def index

        drinks = Drink.all
        render json: drinks.to_json()

    end



end
