class RunRunnerJoinsController < ApplicationController

    def index
        render json: RunRunnerJoin.all
    end

    def show
        join = RunRunnerJoin.find(params[:id])
        render json: join, status: :ok
    end

    def create
        join = RunRunnerJoin.create!(run_runner_params)
        render json: join, status: :created
    end

    def destroy
        join = RunRunnerJoin.find(params[:id])
        join.destroy
        head :no_content
    end

    private

    def run_runner_params
        params.permit(:runner_id, :run_id)
    end

end