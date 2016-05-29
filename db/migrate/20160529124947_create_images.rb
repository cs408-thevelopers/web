class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :path
      t.references :lesson
      t.timestamps null: false
    end
  end
end
