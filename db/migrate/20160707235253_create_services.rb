class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.references :customer, foreign_key: true
      t.string :name
      t.string :service_type
      t.string :description
      t.decimal :latitude
      t.decimal :longitude
      t.string :img_url

      t.timestamps
    end
  end
end
