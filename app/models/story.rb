class Story < ApplicationRecord
  def change
    create_table :stories do |t|
       t.string :story
       t.string :survivor 
       t.timestamps
    end
  end
end
