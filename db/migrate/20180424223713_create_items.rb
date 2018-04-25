class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.attachment :photo
      t.string :name
      t.integer :price
      t.string :form_of_issue
      t.string :indications
      t.string :contraindications
      t.string :side_effects
      t.string :mode_of_application
      t.integer :reg_data
      t.integer :category
      t.timestamps
    end
  end
end
