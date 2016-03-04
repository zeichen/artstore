class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def admin_required
<<<<<<< HEAD
  	if !current_user.admin?
  		redirect_to "/"
  	end
  end

  

=======
    if !current_user.admin?
      redirect_to "/"
    end
  end
>>>>>>> 8ba5ecafa4b846be3fde8ade4fdfd22edd059451
end
