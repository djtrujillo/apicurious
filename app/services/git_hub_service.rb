class GitHubService
  def initialize
    @conn = Faraday.new(url: "https://api.github.com") do |faraday|
      faraday.headers["Authorization"] = "token #{ENV["oauth_token"]}"
      faraday.adapter Faraday.default_adapter
    end
  end

  def user
    response = @conn.get('/user')
    JSON.parse(response.body, symbolize_names: true)
  end

  def feeds
    response = @conn.get('/feeds')
    JSON.parse(response.body, symbolize_names: true)
  end

  def repos
    response = @conn.get('/user/repos')
    repos = JSON.parse(response.body, symbolize_name: true)

  end

end
