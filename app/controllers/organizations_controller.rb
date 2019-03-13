class OrganizationsController < ApplicationController

    def index
        @organizations = Organization.all
    end

    def create
        user = User.find_by id: session[:user_id]
        if params.include? :organization
            @organization = Organization.new org_params
            if @organization.valid?
                @organization.save
                user.update_attribute 'organization_id', @organization.id
                user.save

                flash[:success] = "Organization created successfully."
                redirect_to "/dashboard"
            end
        end


    end

    private 
        def org_params
            params.require(:organization).permit(:name, :hourly_rate)
        end

end
