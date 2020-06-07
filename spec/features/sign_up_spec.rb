require 'sinatra'

feature 'User sign up' do
  scenario 'user can sign up to Chitter' do
    visit '/'
    click_on 'Sign Up'

    expect(current_path).to eq '/chitter/account/new'
    fill_in 'full_name', with: 'Alex Smith'
    fill_in 'username', with: 'user234'
    fill_in 'email', with: 'user234@gmail.com'
    fill_in 'password', with: 'password123'
    click_on 'Sign Up'

    expect(current_path).to eq '/chitter/account/user234'
    expect(page).to have_content('user234@gmail.com')
    expect(page).to have_content('user234')
    expect(page).to have_content('password123')
  end
end