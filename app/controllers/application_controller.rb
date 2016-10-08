class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  def current_person
    if current_user
      case current_user.role
      when 'Student'
        @current_person = Student.find(current_user.id)
      when 'Teacher'
        @current_person = Teacher.find(current_user.id)
      end
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
  end
end
