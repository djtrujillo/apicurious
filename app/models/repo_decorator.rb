class RepoDecorator
  attr_reader :name

  def initialize(repo)
    @name = repo["name"]
  end

end
