class CleanupsController < ApplicationController
    def index 
        cleanups = Cleanup.all 
        render json: cleanups
    end
end
