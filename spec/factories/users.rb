# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name  { Faker::Name.name }
    password { Faker::Internet.password }
    isAdmin { false }
  end
end
