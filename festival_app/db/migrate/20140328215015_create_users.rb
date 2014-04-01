class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string  :name
      t.string  :email
      # instead of storing the password we'll store a salted hash from bcrypt
      t.string  :password_digest
    end
  end
end
