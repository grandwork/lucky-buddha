class RegistrationsController < Devise::RegistrationsController
  
	 def new
    super
  end

  def create
    # add custom create logic here
    super
    #redirect_to thanks_path
  end

  def update
    super
  end

  private
  
  def after_inactive_sign_up_path_for(resource)
    "/thanks"
  end
end