class ReposController < ApplicationController
  before_action :authenticate_user!
  def index
    repo = Repo.new
    @repos = repo.get_data
  end


end
