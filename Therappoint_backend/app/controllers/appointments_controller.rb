class AppointmentsController < ApplicationController
     def index
        appointments = Appointment.all 
        render json: appointments
     end 

     def show 
        appointment = Appointment.find(params[:id])
        render json: appointment
     end 

     def create
         appointment = Appointment.create(appointment_params)
         render json: appointment
 
     end 

     private
     def appointment_params
         params.permit(:client_id, :provider_id, :appoint_date)
     end 
end
