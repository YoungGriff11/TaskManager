class Api::AuthController < ApplicationController
  skip_before_action :authenticate_user!, only: [:login, :register]

  def register
    user = User.create!(email: params[:email], password: params[:password])
    render json: { token: user.generate_jwt, user: { id: user.id, email: user.email } }
  rescue ActiveRecord::RecordInvalid => e
    render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
  end

  def login
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      render json: { token: user.generate_jwt, user: { id: user.id, email: user.email } }
    else
      render json: { errors: ['Invalid email or password'] }, status: :unauthorized
    end
  end
end
