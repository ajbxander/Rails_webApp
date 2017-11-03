class HomeController < ApplicationController
  def home
  end
  
  def contact
    @time = Time.now
  end
  
end
