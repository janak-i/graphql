class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.references :user, foreign_key: true, optional:true

      t.timestamps
    end
  end
end
