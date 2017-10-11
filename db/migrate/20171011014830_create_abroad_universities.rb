class CreateAbroadUniversities < ActiveRecord::Migration[5.0]
  def change
    create_table :abroad_universities do |t|

      t.timestamps
    end
  end
end
