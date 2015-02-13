class ValentinesController < ApplicationController

  def index
    @valentines = Valentine.all
  end

  def new
    @valentine = Valentine.new
  end

  def create
    @valentine = Valentine.new(valentine_params)
      if @valentine.save
        redirect_to root_url
      else
        render :new
      end
  end
  

  private

  def valentine_params
    params.require(:valentine).permit(:name, :message)
  end

end
