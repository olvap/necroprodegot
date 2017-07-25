class HomeController < ApplicationController
  def index
    @list = List.all
  end
end
