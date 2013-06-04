class StaticController < ApplicationController
	layout "devise"

  def generic
    respond_to do |format|
      format.html
    end
  end

  def help
    generic
  end

end
