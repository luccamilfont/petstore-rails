class Pet < ApplicationRecord
  include Discard::Model
  belongs_to :client
end
