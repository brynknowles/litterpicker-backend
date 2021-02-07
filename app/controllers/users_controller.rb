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

    private

    def user_params
        params.permit(:avatar, :username, :password, :age, :catchphrase, :park_badge, :playground_badge, :shoreline_badge, :trail_badge, :general_badge, :cleanups)
    end
end
