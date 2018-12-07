class VisaApplicationFormStep < ApplicationRecord
  belongs_to :visa_application_form
  belongs_to :step
end
