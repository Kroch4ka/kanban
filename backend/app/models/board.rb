class Board < ApplicationRecord
  has_many :tasks, dependent: :destroy
  has_many :columns, dependent: :destroy
end
