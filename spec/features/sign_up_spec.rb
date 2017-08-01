require 'rails_helper'

feature 'A user signs up to support a maker' do
  background do
    @maker = create(:maker)
    Capybara.app_host = "http://#{@maker.subdomain}.example.com"
  end
  scenario 'user selects the per-podcast rate' do
    visit root_path
    expect(page).to have_content "Tom Petty"
    complete_registration_form
    click_button I18n.t('submit')
    expect(page).to have_content I18n.t('contribution_update_message')
    expect(page).to have_content(
      I18n.t('current_contributor_summary', count: 1)
    )
  end

  scenario 'user provides bad email' do
    visit root_path
    complete_registration_form(email: '')
    click_button I18n.t('submit')
    expect(page).to have_content 'be blank'
    complete_registration_form
    click_button I18n.t('submit')
    expect(page).to have_content I18n.t('contribution_update_message')
  end

  def complete_registration_form(overrides={})
    fill_in :user_email, with: overrides[:email] || 'test@example.com'
    fill_in :user_password, with: 'password123'
    fill_in :user_password_confirmation, with: 'password123'
    select 2, from: :user_dollars_per_podcast
  end
end
