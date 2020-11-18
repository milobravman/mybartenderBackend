class TablesController < ApplicationController

    def index

        tables = Table.all
        render json: tables.to_json()

    end

end
