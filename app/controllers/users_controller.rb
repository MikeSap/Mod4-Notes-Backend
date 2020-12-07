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
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: {errors: "User not created"}
        end
    end

    def authenticate
        byebug
    end

    private

    def user_params
        params.permit("username", "password", "password_confirmation")
    end

end
