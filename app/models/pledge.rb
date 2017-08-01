class Pledge < ApplicationRecord
  belongs_to :user
  belongs_to :maker
  validates_presence_of :stripe_customer_id, :dollars_per_podcast
end
