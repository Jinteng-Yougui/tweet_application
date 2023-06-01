class CreateBirds < ActiveRecord::Migration[6.1]
  def change
    create_table :birds do |t|
      t.text :content
      t.timestamps
    end
  end
end
