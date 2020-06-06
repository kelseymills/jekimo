class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  around_action :respect_user_locale_overrides, if: :preferred_locale_present?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def respect_user_locale_overrides(&action)
    I18n.with_locale(preferred_locale, &action)
  end

  def preferred_locale
    return params[:locale] if params[:locale].present?

    current_user.locale if current_user&.locale.present?
  end

  def preferred_locale_present?
    preferred_locale.present?
  end
end
