# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :authenticate_user!

  def current_maker
    @_current_maker ||= Maker.find_by(subdomain: request.subdomains.first)
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :sign_up, keys: [:stripe_source, :dollars_per_podcast]
    )
  end
end
