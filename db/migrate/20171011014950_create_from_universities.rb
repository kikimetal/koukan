class CreateFromUniversities < ActiveRecord::Migration[5.0]
  def change
    create_table :from_universities do |t|
      t.string :name, default: ""
      t.timestamps
    end
  end
end
