class WelcomeController < ApplicationController

  def index

    if current_user
      binding.pry
      @welcome = WelcomeInfoService.new
    end
  end



end
