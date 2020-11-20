class GroupsController < ApplicationController

    def index

        groups = Group.all
        render json: groups.to_json(include: :drinks)

    end

end
