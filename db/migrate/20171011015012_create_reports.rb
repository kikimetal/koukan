class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :name, default: ""
      t.text :detail
      t.references :abroad_university, index: true
      t.timestamps
    end
  end
end
