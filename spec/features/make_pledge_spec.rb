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
    click_link I18n.t('sign_out')
    expect(page).to have_content(
      I18n.t('current_contributor_summary', count: 1)
    )
    expect(Pledge.first.dollars_per_podcast).to eq 2
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

  scenario 'user cancels pledge' do
    visit root_path
    complete_registration_form
    click_button I18n.t('submit')
    click_link I18n.t('cancel_pledge')
    expect(page).to have_content(
      I18n.t('current_contributor_summary', count: 0)
    )
    expect(page).to have_content I18n.t('pledge_cancelled')
  end

  def complete_registration_form(overrides={})
    fill_in :user_email, with: overrides[:email] || 'test@example.com'
    fill_in :user_password, with: 'password123'
    fill_in :user_password_confirmation, with: 'password123'
    select 2, from: :user_dollars_per_podcast
  end
end
