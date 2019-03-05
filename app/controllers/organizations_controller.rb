class OrganizationsController < ApplicationController

    def index
        @organizations = Organization.all
    end

    def create

    end

    def org_params
        params.require(:organization).permit(:name, :hourly_rate)
    end

end
