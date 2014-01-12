class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.text :text
      t.binary :picture

      t.timestamps
    end
  end
end
