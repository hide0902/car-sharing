class Request < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :car, optional: true
  has_many :messages
end
