class HomeController < ApplicationController
  def index
    @projects = Project.all  # This line needs to be added
  end
  def show
  end
end
