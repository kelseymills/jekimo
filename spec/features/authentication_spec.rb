require 'rails_helper'
require 'feature_helper'

RSpec.describe 'Authentication', type: :feature do
  it 'User logging in' do
    visit '/'
    expect(page).to have_text('You are not signed in')
  end

  it 'User logging in (using Javascript)', js: true do
    visit '/'
    expect(page).to have_text('You are not signed in')
  end
end
