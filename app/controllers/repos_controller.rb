class ReposController < ApplicationController

  def index
    repo = Repo.new
    @repos = repo.get_data
  end


end
