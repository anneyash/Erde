class StepQuestion < ApplicationRecord
  belongs_to :step
  belongs_to :question
end
