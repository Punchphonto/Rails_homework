class HomeController < ApplicationController

  before_action :authenticate_user!, only: [:feedback, :send_feedback]
  def index
  end

  def feedback
  end

  def send_feedback
    FeedbackMailer.feedback_mailer(current_user.username, current_user.email, params[:feedback]).deliver_now
    redirect_to root_path
  end
end
