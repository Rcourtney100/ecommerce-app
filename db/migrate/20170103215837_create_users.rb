class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :password
      t.text :address
      t.string :username

      t.timestamps
    end
  end
end
