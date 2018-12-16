class Form < ApplicationRecord
  has_many :steps, dependent: :destroy
end
