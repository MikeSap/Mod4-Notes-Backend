class UsersController < ApplicationController
    skip_before_action :require_login, only: [:create]

    def create
        user = User.new(user_params)
        if user.save
            payload = {user_id: user.id}
            token = encode_token(payload)
            puts token
            render json: {user: UserSerializer.new(user), jwt: token}
        else
            render json: {errors: "User not created"}
        end
    end

    private

    def user_params
        params.permit("username", "password", "password_confirmation")
    end

end
