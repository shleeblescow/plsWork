class RunsController < ApplicationController
    
    def index
        render json: Run.all
    end

    def show 
        run = Run.find(params[:id])
        render json: run, status: :ok
    end

    def create
        run = run.create!(run_params)
        redner json: run, status: :created
    end

    def update
        run = Run.find(params[:id])
        run.update!(run_params)
        render json: run, status: :accepted
    end

    def destroy
        run = Run.find(params[:id])
        run.destroy
        head :no_content
    end

    # def attendefetch
    #     run = Run.find(params[:id])
    #     attendees = runner.where
    # end

    private

    def run_params
        params.permit(:run_location, :when, :mileage, :run_type, :pace, :creator_id, :bevs_after, :notes)
    end

end

