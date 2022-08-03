# frozen_string_literal: true

class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods
end