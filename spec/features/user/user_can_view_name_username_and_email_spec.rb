require 'rails_helper'

feature "signed in user can view name, username, email" do
  scenario "a user is logged on homepage" do
    user = User.create!(screen_name: "djtrujillo", uid: "2954610", oauth_token: "2d28d522890fe8d1618cf198f4e450497184fc37", name: "Danny Trujillo")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    visit '/'

    expect(current_path).to eq('/')
    expect(page).to have_link("Logout")
    expect(page).to have_content("djtrujillo")
    expect(page).to have_content("danny.j.trujillo@gmail.com")
    expect(page).to have_content("Danny Trujillo")
  end
end
