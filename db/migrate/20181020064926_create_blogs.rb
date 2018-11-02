class CreateBlogs < ActiveRecord::Migration[4.2][5.1]
  def change
    create_table :blogs do |t|
      t.string "title"
      t.text "content"
    end
  end
end
