class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.string :name
      t.string :short_desc
      t.string :long_desc
      t.timestamps null: false
    end
  end
end
