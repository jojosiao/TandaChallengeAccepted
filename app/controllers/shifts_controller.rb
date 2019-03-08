class ShiftsController < ApplicationController

    def index
        @new_shift = Shift.new
        @user = User.find session[:user_id]
        if params[:organization_id]
            @shifts = Shift.find_by organization_id: params[:organization_id]
            @organization = Organization.find params[:organization_id]
        else
            raise "no such organization."
        end

    end

    def create

    end

end
