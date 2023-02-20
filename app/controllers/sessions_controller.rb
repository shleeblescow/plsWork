class SessionsController < ApplicationController
  
    skip_before_action :authorized_runner, only: [:create]
  
    def create # '/login' 
        
        runner = Runner.find_by(username:params[:username])
        
        if runner&.authenticate(params[:password])
          session[:runner_id] = runner.id
    
          render json: runner, status: :ok
        else 
          render json: {errors: "Invalid Password or Username"}, status: :unauthorized
        end
      end
  
    def delete
      session.delete :runner_id
      head :no_content
    end 
  
  end