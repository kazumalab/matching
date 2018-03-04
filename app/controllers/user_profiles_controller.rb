class UserProfilesController < ApplicationController
  before_action :authenticate!

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def user_profile_params
      params.require(:user_profiles).permit(
        :job_id,
        :height,
        :body_type,
        :blood_type,
        :education_background,
        :annual_income,
        :holiday,
        :drink_alcohol,
        :smoking,
        :marriage_history,
        :marriage_intention,
        :date_cost,
      )
    end
end
