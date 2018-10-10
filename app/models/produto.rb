class Produto < ApplicationRecord
  belongs_to :user
  has_many :andamentos
end
