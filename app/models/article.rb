# frozen_string_literal: true

class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 3, maximum: 30 }
  validates :description, presence: true,
             length: {  minimum: 5, maximum: 300 }
  validates :user_id, presence: true
end
