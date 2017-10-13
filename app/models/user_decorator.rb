class UserDecorator
  attr_reader :name, :login, :email, :avatar_url
  def initialize(user_hash)
    @name   = user_hash[:name]
    @login  = user_hash[:login]
    @email   = user_hash[:email]
    @avatar_url = user_hash[:avatar_url]
    


  end

end
