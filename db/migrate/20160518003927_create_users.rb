class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.datetime :created_at,      null: false
      t.datetime :updated_at,      null: false
      t.string :password_digest
      t.integer :user_id
      t.boolean :admin
      t.string :contactnumber
    end
  end
end
