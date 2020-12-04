class UsersController < ApplicationController


    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            
            # logged in
            render json: user
        else
            render json: {errors: "Invalid Username/Password"}
            # not logged in
        end
    end

    def signup

    end

    private

    def user_params
        params.permit("username", "password", "password_confirmation")
    end

end
