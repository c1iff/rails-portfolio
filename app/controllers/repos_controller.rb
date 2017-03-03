class ReposController < ApplicationController

  def index

  end

  def show
  end

  def new

  end

  def edit
  end


  private

    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :number, :email, :user_id)
    end
end
