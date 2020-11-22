class GroupsController < ApplicationController

    def index

        groups = Group.all
        render json: groups.to_json(include: [:drinks, :foods, :table])

    end
    #include: [:drinks, :foods]

    def show 

        group = Group.find(params[:id])
        render json: group

    end

    def create

        group = Group.create(
            num_people: params[:num_people],
            table_id: params[:table_id]
            )
        render json: group.to_json()

    end



end
