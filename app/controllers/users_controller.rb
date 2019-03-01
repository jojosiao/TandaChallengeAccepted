class UsersController < ApplicationController

    def signup
        if session[:user_id]
            redirect_to "/dashboard"
        end
        
        if params.include? :user
            @user =  User.new user_params
            if @user.valid?
                @user.save
                flash[:success] = "You may now login using your registered account."
                redirect_to "/signin"
            end
        else
            @user = User.new
        end
        
    end

    def signin
        if session[:user_id]
            redirect_to "/dashboard"
        end

        @user = User.new
        if params.include? :user
            @user =  User.new user_params
            user = User.find_by email: @user['email'], password: @user['password']
            if user
                flash[:message] = 'login successful!'
                redirect_to "/dashboard"
                session[:user_id] = user.id
            else
                flash[:message]='login failed.'
            end
        end
    end

    def logout
        if session[:user_id]
            session.delete(:user_id)
            flash[:message] = "logout successful."
        end
            redirect_to "/login"
    end

    private 

        def user_params
            params.require(:user).permit(:name, :email, :password, :password_confirmation)
        end

end
