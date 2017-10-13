class WelcomeInfoService
  def initialize
  end

  def user
    user_hash = GitHubService.new.user
    UserDecorator.new(user_hash)
  end

  def feeds
    feeds_hash = GitHubService.new.feeds
    FeedsDecorator.new(feeds_hash)
  end

  def repos
    repos_array = GitHubService.new.repos
    repos_array = repos_array.map do |repo|
      RepoDecorator.new(repo)
    end
  end


end
