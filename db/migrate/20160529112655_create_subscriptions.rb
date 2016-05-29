class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :user
      t.references :klass
      t.timestamps null: false
    end
  end
end
