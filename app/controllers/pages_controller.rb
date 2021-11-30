class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @workouts = Workout.all
  end

  def dashboard
    @workouts = Workout.all
    @favorite_workouts = current_user.all_favorites
    # @workout = Workout.find(params[:workout_id])
  end
end
