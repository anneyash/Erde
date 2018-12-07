class CreateVisaApplicationFormSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :visa_application_form_steps do |t|
      t.integer :visa_application_form_id
      t.integer :step_id
      t.integer :position

      t.timestamps
    end
  end
end
