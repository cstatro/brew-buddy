class CreateInterestsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :interests do |t|
      t.integer :user_id
      t.integer :beer_id
    end
  end
end
