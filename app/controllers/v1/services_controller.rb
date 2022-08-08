class V1::ServicesController < ApplicationController
    before_action :set_salon, only: [:index,:create]
    def index
        @services = @salon.services
        render json: @services , status: :ok
    end
    def create
        @service = @salon.services.create(params_service_create)
        render json: @service , status: :created
    end

    private

    def set_salon
        @salon = Salon.find(params[:salon_id]) if params[:salon_id].present? 
    end

   def params_service_create
    params.require(:service).permit(:name,:duration,:price)
   end
    
    
end
