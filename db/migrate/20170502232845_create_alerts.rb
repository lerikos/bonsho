class CreateAlerts < ActiveRecord::Migration[5.0]
  def change
    create_table :alerts do |t|
      t.string :title
      t.text :description
      t.string :url
      t.date :date

      t.timestamps null: false
    end
  end
end
