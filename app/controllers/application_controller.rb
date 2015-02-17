class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_student
    Student.find_by_id(session[:student_id])
  end

  helper_method :current_student

  def authorize
    redirect_to login_url, notice: "Not authorized!" if current_student.nil?
  end

  def authorize_clubs
    redirect_to login_url, notice: "Not authorized for this club!" if current_student.clubs
  end

end
