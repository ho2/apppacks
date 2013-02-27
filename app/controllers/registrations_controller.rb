class RegistrationsController < Devise::RegistrationsController

  def create
    flash[:info] = 'Registrations are not open yet, but please check back soon'
    redirect_to user_session_path
   end
   
  def new
    flash[:info] = 'Registrations are not open yet, but please check back soon'
    redirect_to user_session_path
  end
end