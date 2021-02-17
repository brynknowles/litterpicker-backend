class CleanupsController < ApplicationController
    # before_action :set_cleanup, only: [:index, :show, :update, :destroy]

    # GET /cleanups
    def index 
        cleanups = Cleanup.all 
        render json: cleanups, status: 200
    end

    # GET /listings/:id
    def show
        cleanup = Cleanup.find_by(id: params[:id])
        if cleanup
            render json: cleanup, status: 200
        else
            render json: { error: "Cleanup not found" }, status: :not_found
        end
    end

    # POST /cleanups
    def create
        cleanup = Cleanup.create(cleanup_params)
        # render json: cleanup, status: 201
        if cleanup.valid?
            render json: cleanup, status: 201
        else 
            render json: { error: cleanup.errors.full_messages }, status: :unprocessable_entity
        end
    end

    # PATCH /cleanups/:id
    def update 
        cleanup = Cleanup.find_by(id: params[:id])
        cleanup.update!(cleanup_params)
        render json: cleanup, status: 200
        # if cleanup.valid?
        #     render json: cleanup, status: 200
        # else
        #     render json: { error: cleanup.errors.full_messages }, status: :unprocessable_entity
        # end
    end

    # DELETE /cleanups/:id
    def destroy
        cleanup = Cleanup.find_by(id: params[:id])
        cleanup.destroy
        # render json: cleanup, status: :no_content
    end

    private

    # Cleanup Params
    def cleanup_params
        params.permit(:id, :name, :location, :category, :image, :date, :start_time, :end_time, :comment, :cheer)
    end

    # def set_cleanup
    #     @cleanup = Cleanup.find(params[:id])
    # end
end
