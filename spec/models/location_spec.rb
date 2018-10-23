# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Location, type: :model do
  describe 'associations' do
    it 'belongs to elephant' do
      expect(described_class.reflect_on_association(:elephant).macro)
        .to eq(:belongs_to)
    end

    it 'belongs to user' do
      expect(described_class.reflect_on_association(:user).macro)
        .to eq(:belongs_to)
    end
  end
end
