class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :story
      t.string  :survivor
    end
  end
end
