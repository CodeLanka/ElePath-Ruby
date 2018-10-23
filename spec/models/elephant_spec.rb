# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Elephant, type: :model do
  describe 'associations' do
    it 'has many locations' do
      expect(described_class.reflect_on_association(:location).macro)
        .to eq(:has_many)
    end
  end

  describe 'validations' do
    let(:elephant) { build_stubbed(:elephant, name: nil) }

    it 'is invalid without name' do
      expect(elephant.valid?).to be_falsey
    end

    it 'is valid when all attributes are provided' do
      elephant.name = Faker::Name.name
      expect(elephant.valid?).to be_truthy
    end
  end
end
