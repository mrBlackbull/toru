class ApplicationController < ActionController::Base
  layout "application"
  protect_from_forgery

  layout :layout_by_resource

  def layout_by_resource
    if devise_controller? && resource_name == :user && action_name == 'edit'
      "application"
    else
      "devise"
    end
  end
end
