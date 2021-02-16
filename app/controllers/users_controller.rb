class UsersController < ApplicationController
    # before_action :set_user, only: [:show,:update,:destroy]
    
    # GET /users
    def index 
        users = User.all 
        render json: users, status: 200
    end

    # GET /users/:id
    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user, status: 200
        else
            render json: { error: "User not found" }, status: :not_found
        end
    end

    # POST /users
    def create 
        user = User.create(user_params)
        if user.valid?
            render json: user, status: 201
        else
            render json: { error: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    # PATCH /users/:id
    def update 
        user = User.find_by(id: params[:id])
        user.update!(user_params)
        render json: user, status: 200
        # if user.valid?
        #     render json: user, status: 200
        # else
        #     render json: { error: user.errors.full_messages }, status: :unprocessable_entity
        # end
    end

    # DELETE /users/:id
    def destroy 
        user = User.find_by(id: params[:id])
        user.destroy
        render json: users, status: :no_content
    end
    
    private

    # User Params
    def user_params
        params.permit(:id, :avatar, :username, :password, :age, :catchphrase, :park_badge, :playground_badge, :shoreline_badge, :trail_badge, :earth_steward_badge)
    end

    # def set_user
    #     @user = User.find(params[:id])
    # end
end
