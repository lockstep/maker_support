class MakersController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @maker = current_maker.decorate
  end
end
