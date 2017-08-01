class RegistrationsController < Devise::RegistrationsController
  def create
    super do
      if resource.persisted?
        NewPledgeCreator.perform(resource, current_maker)
        redirect_to root_path, notice: I18n.t('contribution_update_message')
      else
        redirect_to root_path, alert: resource.errors.full_messages.first
      end
      return
    end
  end
end
