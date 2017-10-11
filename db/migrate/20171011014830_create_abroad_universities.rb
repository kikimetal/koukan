class CreateAbroadUniversities < ActiveRecord::Migration[5.0]
  def change
    create_table :abroad_universities do |t|
      t.string :name, default: ""
      t.text :detail
      t.references :country, index: true
      t.references :from_university, index: true
      t.timestamps
    end
  end
end
