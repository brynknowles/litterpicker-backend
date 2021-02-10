class UserCleanupsController < ApplicationController

    def index
        user_cleanups = UserCleanup.all
        render json: user_cleanups, status: 200
    end
    
    def create
        user_cleanup = UserCleanup.create(user_cleanup_params)
        render json: user_cleanup, status: 201
    end

    def destroy 
        @user_cleanup.id = UserCleanup.find_by(id: params[:id])
        @user_cleanup.destroy
        render json: user_cleanups, status: :no_content
    end

    private

    def user_cleanup_params
        params.permit(:user_id, :cleanup_id)
    end
end