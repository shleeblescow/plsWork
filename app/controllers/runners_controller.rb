class RunnersController < ApplicationController
    skip_before_action :authorized_runner, only: [:create]

    def show
        render json: current_runner, status: :ok
    end

    # def userprofile
    #     user = User.find(params[:id])
    #     render json:user
    # end

    def index
        render json: Runner.all
    end

    def update
        runner = Runner.find(params[:id])
        runner.update!(runner_params)
        render json: runner, status: :accepted
    end

    def create
        runner = Runner.create!(runner_params)
        session[:runner_id] = runner.id
        render json: runner, status: :created
    end

    # def createdtrips
    #     user = User.find(params[:id])
    #     created_trips = Trip.where(creator_id: user.id)
    #     render json: created_trips
    # end

    # def joinedtrips
    #     user = User.find(params[:id])
    #     joined_trips = user.trips.where.not(creator_id: user.id)
    #     render json: joined_trips
    # end

    # def profilebikes
    #     user = User.find(params[:id])
    #     profile_bikes = user.bikes
    #     render json: profile_bikes
    # end

    # def funphotos
    #     user = User.find(params[:id])
    #     fun_photos = user.user_personal_photos
    #     render json: fun_photos
    # end

    private

    def runner_params
        params.permit(:username, :password, :name, :age, :neighborhood, :bio, :running_deets)
    end

end