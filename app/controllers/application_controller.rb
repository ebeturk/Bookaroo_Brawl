class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :check_monster, if: :user_signed_in?, except: %i[new create]

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:date_of_birth])
    devise_parameter_sanitizer.permit(:account_update, keys: [:date_of_birth])
  end

  private

  def check_monster
    redirect_to new_monster_path if user_signed_in? && current_user.monster.nil?
  end
end
