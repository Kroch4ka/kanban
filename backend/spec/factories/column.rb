# frozen_string_literal: true

FactoryBot.define do
  factory :column do
    name { 'Column Name' }
    board
  end
end
