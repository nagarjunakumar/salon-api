class V1::SalonsController < ApplicationController

    before_action :set_salon ,only: [:show, :update, :destroy]

    def index
        @salons = Salon.all
        render json:@salons, status: :ok  
    end

    def create
        @salon = Salon.create(params_salon_create)
        render json:@salon, status: :created
    end

    def show
        render json:@salon, status: :ok
    end

    def destroy
        @salon.destroy
    end

    private 

    def set_salon
        @salon = Salon.find(params[:id]) if params[:id].present?
    end


    def params_salon_create
        params.require(:salon).permit(:company_name,:gstin,:pan_number,:address,:no_of_seats)
    end
    
end
