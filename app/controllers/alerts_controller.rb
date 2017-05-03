class AlertsController < ApplicationController
    before_action :set_alert, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, :except => [:index]
    
    def create
        @alert = Alert.new(alert_params)
        authorize @alert
    
       if @alert.save
           redirect_to @alert, alert: "Alert successfully created"
       else
           render new_alert_path, alert: "Oops!, please try again!"
       end
   end
   
   def edit
       authorize @alert
   end
   
   def update
       authorize @alert
       @alert.update(alert_params)
       redirect_to @alert, alert: "Alert successfully updated"
   end
   
   def destroy
       authorize @alert
       @alert.destroy
       redirect_to root_path, alert: "Alert successfully deleted"
   end
   
   private
   def set_alert
       @alert = Alert.find(params[:id])
   end
   # will need to change these params
   def alert_params
       params.require(:alert).permit(:title, :description, :url, :admin_id)
   end
end
