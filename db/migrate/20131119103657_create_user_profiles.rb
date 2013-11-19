class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.text :biography
      t.text :telephone_number

      t.timestamps
    end
  end
end
