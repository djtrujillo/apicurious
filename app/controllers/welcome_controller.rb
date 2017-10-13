class WelcomeController < ApplicationController

  def index
    if current_user
      @welcome = WelcomeInfoService.new
    end
  end



end
