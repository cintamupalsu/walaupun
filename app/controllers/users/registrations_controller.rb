# -----------------------------------
# 01.02 2019.01.02 By Arief Maulana
# -----------------------------------
# 01.02 2019.01.02 Devise customize fields
# -----------------------------------

# frozen_string_literal: true
class Users::RegistrationsController < Devise::RegistrationsController
  # 01.02 2019.01.02 >>>
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]
  # 01.02 2019.01.02 <<<
  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  #If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    # 01.02 2019.01.02 >>>
    devise_parameter_sanitizer.permit(:sign_up, keys: [:language_id, :name])
    # 01.02 2019.01.02 <<<
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    # 01.02 2019.01.02 >>>
    devise_parameter_sanitizer.permit(:account_update, keys: [:language_id, :name])
    # 01.02 2019.01.02 <<<
  end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
