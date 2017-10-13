class FeedsDecorator
  attr_reader :timeline, :user
  def initialize(feeds_hash)
    @timeline = feeds_hash[:timeline_url]
    @user = feeds_hash[:user_url]
  end
end
