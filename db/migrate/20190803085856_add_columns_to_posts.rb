class AddColumnsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :lat, :double
    add_column :posts, :lng, :double
    add_column :posts, :address, :string
  end
end
