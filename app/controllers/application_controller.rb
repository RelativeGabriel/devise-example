class ApplicationController < ActionController::Base
  layout :layout_by_resource

  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    root_path
  end

  protected

  def layout_by_resource
  	if devise_controller?
      "devise"
    else
      "application"
    end
  end
end
