class HomeController < ApplicationController
  def index
    @projects = Project.all
  end
  def show
  end
end
