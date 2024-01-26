class Booktag < ApplicationRecord
  has_many :booktags, dependent: :destroy
  has_many :book, through: :booktags

  validates :name, presence:true, length:{maximum:50}
end
