class Character < ApplicationRecord
  has_and_belongs_to_many :lists

  default_scope { order(:name) }
end
