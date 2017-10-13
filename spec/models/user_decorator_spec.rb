require 'rails_helper'

describe UserDecorator do
  let(:user) { UserDecorator.new(
    {
       :login=>"djtrujillo",
       :id=>2954610,
       :avatar_url=>"https://avatars2.githubusercontent.com/u/2954610?v=4",
       :gravatar_id=>"",
       :url=>"https://api.github.com/users/djtrujillo",
       :html_url=>"https://github.com/djtrujillo",
       :followers_url=>"https://api.github.com/users/djtrujillo/followers",
       :following_url=>"https://api.github.com/users/djtrujillo/following{/other_user}",
       :gists_url=>"https://api.github.com/users/djtrujillo/gists{/gist_id}",
       :starred_url=>"https://api.github.com/users/djtrujillo/starred{/owner}{/repo}",
       :subscriptions_url=>"https://api.github.com/users/djtrujillo/subscriptions",
       :organizations_url=>"https://api.github.com/users/djtrujillo/orgs",
       :repos_url=>"https://api.github.com/users/djtrujillo/repos",
       :events_url=>"https://api.github.com/users/djtrujillo/events{/privacy}",
       :received_events_url=>"https://api.github.com/users/djtrujillo/received_events",
       :type=>"User",
       :site_admin=>false,
       :name=>"Danny Trujillo",
       :company=>nil,
       :blog=>"",
       :location=>nil,
       :email=>"danny.j.trujillo@gmail.com",
       :hireable=>nil,
       :bio=>nil,
       :public_repos=>34,
       :public_gists=>8,
       :followers=>0,
       :following=>0,
       :created_at=>"2012-12-03T19:03:38Z",
       :updated_at=>"2017-10-11T00:32:07Z"
    })
            }

  context "class methods" do
    context ".initialize" do
      it "exists" do
        expect(user).to be_a UserDecorator
      end
    end
  end

  context "instance methods" do
    context "#name" do
      it "returns the name, login, and email of user" do
        expect(user.email).to eq("danny.j.trujillo@gmail.com")
        expect(user.login).to eq("djtrujillo")
        expect(user.name).to eq("Danny Trujillo")
      end
    end
  end
end
