class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(
      :email,
      :password,
      :name,
      :sirname,
      :password_confirmation
    )
  end

  def account_update_params
    params.require(:user).permit(
      :email,
      :password,
      :name,
      :sirname,
      :password_confirmation,
      :current_password
    )
  end

  def after_sign_up_path_for(resource)
  request.env['omniauth.origin'] || stored_location_for(resource) || root_url
  end
end
