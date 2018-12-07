class CreateVisaApplicationForms < ActiveRecord::Migration[5.2]
  def change
    create_table :visa_application_forms do |t|
      t.integer :country_id
      t.string :title

      t.timestamps
    end
  end
end
