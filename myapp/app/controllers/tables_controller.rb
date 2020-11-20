class TablesController < ApplicationController

    def index

        tables = Table.all
        render json: tables.to_json(include: :group)

    end

end
