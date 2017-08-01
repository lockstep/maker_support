# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def current_maker
    @_current_maker ||= Maker.find_by(subdomain: request.subdomains.first)
  end
end
