class ShiftsController < ApplicationController

    def index
        @new_shift = Shift.new
        @user = User.find session[:user_id]

        @organization = Organization.find params[:organization_id]
        @user_shift = Shift.find_by user: @user, organization: @organization
        if params[:organization_id]
            @shifts = Shift.find_by organization_id: params[:organization_id]
        else
            raise "no such organization."
        end

    end

    def create
        if params.include? :shift
    end

    def shift_params
        params.require(:shift).permit(:start, :finish, :break_length)
    end

end
