class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user
        else
            render json: { error: "User not found" }, status: :not_found
        end
    end

    def create 
        user = User.create(user_params)
        if user.valid?
            render json: user
        else
            render json: { error: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update 
        user = User.find(params[:id])
        user.update!(user_params)
        if user.valid?
            render json: user
        else
            render json: { error: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy 
        current_user = User.first
        current_user.destroy
        if current_user.valid?
            render json: nil, status: :no_content
        else
            render json: { error: current_user.errors.full_messages }, status: :unprocessable_entity
        end

    end
    

    private

    def user_params
        params.permit(:avatar, :username, :password, :age, :catchphrase, :park_badge, :playground_badge, :shoreline_badge, :trail_badge, :general_badge, :cleanups)
    end
end
