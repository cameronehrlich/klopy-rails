class CreateClippings < ActiveRecord::Migration
  def change
    create_table :clippings do |t|
      t.text :content

      t.timestamps
    end
  end
end
