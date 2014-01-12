class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :user_name
      t.string :email_id
      t.binary :image

      t.timestamps
    end
  end
end
