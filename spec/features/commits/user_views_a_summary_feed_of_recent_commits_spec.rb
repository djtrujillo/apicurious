require 'rails_helper'

feature "as an authenticated user" do
  scenario "i can view a summary feed of recent commits" do
    user = User.create!(screen_name: "djtrujillo", uid: "2954610", oauth_token: "2d28d522890fe8d1618cf198f4e450497184fc37", name: "Danny Trujillo")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/'

    expect(current_path).to eq('/')
    expect(page).to have_content("Contribution Activity")
    expect(page).to have_content("https://github.com/{user}")
    expect(page).to have_content("https://github.com/timeline")
  end
end
