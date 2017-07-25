class List < ApplicationRecord
  has_and_belongs_to_many :characters

  def total
    characters.reject(&:alive?).count
  end
end
