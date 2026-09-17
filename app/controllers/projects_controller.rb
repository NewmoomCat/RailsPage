class ProjectsController < ApplicationController
  def index
    @project_page = "Neko's Project"
    @name = "XinYueNeko"
    render 'projects/index'
  end
end
