class UsersController < ApplicationController

    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: user
        else
            render json: {errors: "Invalid Username/Password"}
        end
    end

    def signup
        byebug
    end

    private

    def user_params
        params.permit("username", "password", "password_confirmation")
    end

end
