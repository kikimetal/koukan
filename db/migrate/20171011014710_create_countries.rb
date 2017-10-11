class CreateCountries < ActiveRecord::Migration[5.0]
  def change
    create_table :countries do |t|
      t.string :name, default: ""
      t.references :region, index: true
      t.timestamps
    end
  end
end
