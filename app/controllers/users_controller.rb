class UsersController < ApplicationController

    def new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to user_path(@user)
        else
            redirect_to 'welcome/home'
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :image, :uid)
    end
end
