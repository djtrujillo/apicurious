require 'rails_helper'

describe GitHubService do
  context "class methods" do
    context ".initialize" do
      it "exists" do
        expect(GitHubService.new).to be_a GitHubService
      end
    end
  end

  context "instance methods" do
    context "#find_user_info" do
      let(:user_info) { GitHubService.new.user }
      it "returns a hash of user info" do
        expect(user_info).to be_a Hash
        expect(user_info.count).to eq(30)
        expect(user_info).to have_key :login
        expect(user_info).to have_key :avatar_url
        expect(user_info).to have_key :name
        expect(user_info).to have_key :email
      end
    end

    context "#feeds" do
      let(:feeds) { GitHubService.new.feeds }
      it "returns a hash of feeds" do
        expect(feeds).to be_a Hash
        expect(feeds).to have_key :timeline_url
        expect(feeds).to have_key :user_url
        expect(feeds).to have_key :current_user_public_url
      end
    end

    context "#repos" do
      let(:repos) { GitHubService.new.repos }
      it "returns a hash of repos" do
        expect(repos).to be_a Array
        expect(repos.count).to eq(30)
      end
    end
  end
end
