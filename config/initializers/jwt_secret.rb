Rails.application.configure do
  config.jwt_secret = ENV['JWT_SECRET'] || 'fallback-super-secret-1234567890-change-in-production'
end
