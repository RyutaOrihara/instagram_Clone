class AddUserRefToBlogs < ActiveRecord::Migration[4.2][5.1]
  def change
    add_reference :blogs, :user, foreign_key: true
  end
end
