class CleanupsController < ApplicationController
    
    # GET /cleanups
    def index 
        cleanups = Cleanup.all 
        render json: cleanups
    end

    # GET /listings/:id
    def show
        cleanup = Cleanup.find_by(id: params[:id])
        if cleanup
            render json: cleanup
        else
            render json: { error: "Cleanup not found" }, status: :not_found
        end
    end

    # POST /cleanups
    def create 
        def create
            # fake auth
            current_user = User.first
            
            cleanup = current_user.cleanups.create(cleanup_params)
            if cleanup.valid?
                render json: cleanup
            else
                render json: { error: cleanup.errors.full_messages }, status: :unprocessable_entity
            end
        end
    end

    # PATCH /cleanups/:id
    def update 
        # fake auth
        current_user = User.first
        
        cleanup = current_user.cleanups.update(cleanup_params)
        if cleanup.valid?
            render json: cleanup
        else
            render json: { error: cleanup.errors.full_messages }, status: :unprocessable_entity
        end
    end

    # DELETE /cleanups/:id
    def destroy
        # fake auth
        current_user = User.first
        
        cleanup = current_user.cleanup.destroy
        if cleanup.valid?
            render json: nil, status: :no_content
            # should i consider the below code for render instead or leave off the render?
            # render json: cleanups
        else
            render json: { error: cleanup.errors.full_messages }, status: :unprocessable_entity
        end
        
    end

    private

    def cleanup_params
        params.permit(:name, :category, :image, :date, :duration, :comment, :cheer, :user, :location)
    end
end
