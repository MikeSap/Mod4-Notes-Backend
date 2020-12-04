class UsersController < ApplicationController


    def create
        user = User.find_or_create_by(user_params)
        render json: user
    end

    private

    def user_params
        params.permit("username"
        # , "password", "password_confirmation"
        )
    end

end
