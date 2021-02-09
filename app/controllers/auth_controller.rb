class AuthController < ApplicationController
    # def login 
    #     user = User.first
    #     render json: user
    # end

    def login
        user=User.find_by(name: params[:name])
        if(user && user.authenticate(params[:password]))
            render json: user
        end
    end
end


