class TablesController < ApplicationController

    def index

        tables = Table.all
        render json: tables.to_json(include: {group: {include: [:food_groups, :drink_groups]}})

    end

    def show

        table = Table.find(params[:id])
        render json: table.to_json(include: :group)

    end

end
