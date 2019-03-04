class DashboardController < ApplicationController

    def index
        redirect_to "/signin" unless session[:user_id]
        @user = User.find_by id: session[:user_id]
        @orgs = Organization.all
        @organization = Organization.new
    end

end
