class UserCleanupsController < ApplicationController

    def index
        user_cleanups = UserCleanup.all
        render json: user_cleanups, status: 200
    end
    
    def create
        user_cleanup = UserActivity.create(user_cleanup_params)
        render json: user_activity, status: 201
    end

    private

    def user_cleanup_params
        params.permit(:user_id, :cleanup_id)
    end
end
