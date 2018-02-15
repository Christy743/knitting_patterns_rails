class Users < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email,              null: false, default: ""
      t.string :password_digest
      t.string :username
    end
  end
end
