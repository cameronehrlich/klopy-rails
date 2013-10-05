class HomeController < ApplicationController
  def index
  	@clippings = Clipping.all
  end
end
