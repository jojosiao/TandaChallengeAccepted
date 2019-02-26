class UsersController < ApplicationController

    def signup
        if params.include? :user
            @user =  User.new user_params
            if @user.save
                flash[:success] = "You may now login using your registered account."
                redirect_to "/signin"
            else 
                render 'signup'
            end
        else
            @user = User.new
        end
        
    end

    def signin

    end

    private 

        def user_params
            params.require(:user).permit(:name, :email, :password, :confirm_password)
        end

      

end
