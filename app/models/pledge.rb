class Pledge < ApplicationRecord
  belongs_to :user
  belongs_to :maker
end
