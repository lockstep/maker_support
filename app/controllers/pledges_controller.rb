class PledgesController < ApplicationController
  def destroy
    # NOTE: Improve this so we can let users keep their accounts
    # and re-pledge at different amounts later. This would also
    # be necessary for 
    user = current_user
    Pledge.find_by(maker: current_maker, user: user)&.destroy
    sign_out user
    user.destroy
    redirect_to root_path, notice: t('pledge_cancelled')
  end
end
