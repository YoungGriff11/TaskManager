require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a valid factory' do
    user = User.new(email: 'test@example.com', password: 'password123')
    expect(user).to be_valid
  end

  it 'has_many tasks' do
    user = User.create(email: 'test@example.com', password: 'password123')
    expect(user.tasks).to be_empty
  end
end
