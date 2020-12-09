class GroupsController < ApplicationController
    skip_before_action :verify_authenticity_token, :only => [:create, :destroy]
    def index

        groups = Group.all
        render json: groups.to_json(include: [{food_groups: {include: :food}},{drink_groups: {include: :drink}}, :table ])
#include: {users: {include: :profile} })
    end
    #include: [:drinks, :foods]

    def show 

        group = Group.find(params[:id])
        render json: group.to_json(include: [:drinks, :foods, :table])

    end

    def create

        @group = Group.create(
            num_people: params[:num_people],
            table_id: params[:table_id])
        render json: @group.to_json()

    end


    def destroy
        group = Group.find(params[:id])
        group.destroy
    end


end
