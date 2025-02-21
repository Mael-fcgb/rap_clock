class HomeController < ApplicationController
  def index
    # Récupérer tous les projets triés par date de manière décroissante
    @projects = Project.all.order(date: :desc)

    # Regrouper les projets par date
    @projects_by_date = @projects.group_by(&:date)
  end

  def show
  end
end

