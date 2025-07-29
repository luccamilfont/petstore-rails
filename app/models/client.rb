class Client < ApplicationRecord
  include Discard::Model
  has_many :pets, dependent: :destroy
end
