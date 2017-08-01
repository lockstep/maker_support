class RegistrationsController < Devise::RegistrationsController
  def create
    super
    if resource.persisted?
      flash[:notice] = I18n.t('contribution_update_message')
      NewPledgeCreator.perform(resource, current_maker)
    end
  end
end
