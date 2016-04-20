class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, unique: true, index: true

      t.timestamps null: false
    end
  end
end
