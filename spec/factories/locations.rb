# frozen_string_literal: true

FactoryBot.define do
  factory :location do
    date { Time.now }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
    user
    elephant
  end
end
