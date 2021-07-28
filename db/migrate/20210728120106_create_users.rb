class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.string :hobby,  array: true, default: []
      t.string :gender,  default: "Male"
      t.string :interest,  array: true, default: []
      t.boolean :status

      t.timestamps
    end
  end
end
