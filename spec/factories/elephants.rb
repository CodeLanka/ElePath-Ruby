# frozen_string_literal: true

FactoryBot.define do
  factory :elephant do
    name { Faker::Superhero.name }
    age { Faker::Number.number(2) }
    height { Faker::Number.number(2) }
  end
end
