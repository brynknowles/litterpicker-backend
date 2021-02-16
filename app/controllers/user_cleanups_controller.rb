class UserCleanupsController < ApplicationController

    def index
        user_cleanups = UserCleanup.all
        render json: user_cleanups, status: 200
    end

    def show 
        user_cleanup = UserCleanup.find_by(id: params[:id])
        if user_cleanup
            render json: user_cleanup, status: 200
        else
            render json: { error: "UserCleanup not found"}, status: :not_found
        end
    end
    
    # POST /user_cleanups
    def create
        user_cleanup = UserCleanup.create(user_cleanup_params)
        if user_cleanup.valid?
            render json: user_cleanup, status: 201
        else
            render json: { error: user_cleanup.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy 
        user_cleanup = UserCleanup.find_by(id: params[:id])
        user_cleanup.destroy
        render json: user_cleanups, status: :no_content
    end

    private

    def user_cleanup_params
        params.permit(:user_id, :cleanup_id)
    end
end
