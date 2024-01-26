# frozen_string_literal: true

FactoryBot.define do
  factory :character do
    first_name { Faker::Games::DnD.first_name }
    last_name { Faker::Games::DnD.last_name }
    race { Faker::Games::DnD.race }
    klass { Faker::Games::DnD.klass }
    hit_points { 10 + (rand * 10).round }
    strength { (rand * 18).round + 3 }
    dexterity { (rand * 18).round + 3 }
    constitution { (rand * 18).round + 3 }
    intelligence { (rand * 18).round + 3 }
    wisdom { (rand * 18).round + 3 }
    charisma { (rand * 18).round + 3 }
  end
end
