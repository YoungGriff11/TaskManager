class ApplicationController < ActionController::API
  before_action :authenticate_user!

  private

  def authenticate_user!
    header = request.headers['Authorization']
    return render json: { errors: ['Not authenticated'] }, status: :unauthorized unless header

    token = header.split(' ').last
    begin
      decoded = JWT.decode(token, Rails.configuration.jwt_secret, true, algorithm: 'HS256').first
      @current_user = User.find(decoded['user_id'])
    rescue JWT::DecodeError, ActiveRecord::RecordNotFound
      render json: { errors: ['Invalid token'] }, status: :unauthorized
    end
  end

  def current_user
    @current_user
  end
end
