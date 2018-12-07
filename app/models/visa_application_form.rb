class VisaApplicationForm < ApplicationRecord
  has_many :visa_application_form_steps
  has_many :steps, through: :visa_application_form_steps
end
