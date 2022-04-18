class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

    private
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(
        :sign_up, keys: [:nickname, :genre_id, :bike_name, :age_id, :gender_id, :prefecture_id, :personality_id])
    end
  end