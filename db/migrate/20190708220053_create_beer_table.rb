class CreateBeerTable < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :brewery
      t.string :type
      t.float :abv
    end

  end
end
