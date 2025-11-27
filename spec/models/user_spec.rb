require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with email and password' do
    user = FactoryBot.build(:user)
    expect(user).to be_valid
  end

  it 'has_many tasks' do
    user = FactoryBot.create(:user)
    expect(user.tasks).to be_empty
  end
end