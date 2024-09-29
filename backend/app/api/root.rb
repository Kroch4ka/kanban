# frozen_string_literal: true

class Root < Grape::API
  format :json

  mount Boards
  mount Columns
  mount Tasks
end
