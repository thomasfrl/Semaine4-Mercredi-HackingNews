class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.timestamps
      t.belongs_to :user, index: true
      t.belongs_to :link, index: true
    end
  end
end
