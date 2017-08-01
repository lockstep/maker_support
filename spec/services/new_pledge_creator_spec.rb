require 'rails_helper'

describe NewPledgeCreator do
  describe '::perform' do
    before do
      @user = create(:user)
      @maker = create(:maker)
    end

    it 'associates a stripe customer' do
      NewPledgeCreator.perform(@user, @maker)
      pledge = Pledge.first
      expect(pledge.stripe_customer_id).not_to be_nil
    end
  end
end
