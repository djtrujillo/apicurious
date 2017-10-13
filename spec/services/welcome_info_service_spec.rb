require 'rails_helper'

describe WelcomeInfoService do
  context "class methods" do
    context ".initialize" do
      it "exists" do
        expect(WelcomeInfoService.new).to be_a WelcomeInfoService
      end
    end
  end

  context "instance methods" do
    let(:welcome) { WelcomeInfoService.new() }
    let(:user) { WelcomeInfoService.new.user }
    let(:feeds) { WelcomeInfoService.new.feeds }
    let(:repos) { WelcomeInfoService.new.repos }

    context "#user" do
      it "returns a user info object" do
        expect(user).to be_a Object
        expect(user.email).to eq("danny.j.trujillo@gmail.com")
        expect(user.login).to eq("djtrujillo")
        expect(user.name).to eq("Danny Trujillo")
      end
    end

    context "#feeds" do
      it "returns a recent commits object" do
        expect(feeds).to be_a Object
        expect(feeds.timeline).to eq("https://github.com/timeline")
        expect(feeds.user).to eq("https://github.com/{user}")
      end
    end

    context "#repos" do
      it "returns an array of repo objects" do
        expect(repos.count).to eq(30)
        expect(repos.first).to be_a Object
        # expect(repos.first.name).to eq("active-record-sinatra")
      end
    end
  end
end
