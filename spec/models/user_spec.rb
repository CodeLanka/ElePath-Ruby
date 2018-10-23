# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it 'has many locations' do
      expect(described_class.reflect_on_association(:locations).macro)
        .to eq(:has_many)
    end
  end

  describe 'validations' do
    let(:user) { build(:user) }

    it 'is invalid without name' do
      user.name = ''
      user.save
      expect(user.valid?).to be_falsey
      expect(user.errors[:name]).to include(/can't be blank/)
    end

    it 'is invalid without password' do
      user.password = nil
      user.save
      expect(user.valid?).to be_falsey
      expect(user.errors[:password]).to include(/can't be blank/)
    end
  end
end
