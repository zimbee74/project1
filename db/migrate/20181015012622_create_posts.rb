class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.date :date
      t.text :heading
      t.text :content
      t.text :image

      t.timestamps
    end
  end
end
