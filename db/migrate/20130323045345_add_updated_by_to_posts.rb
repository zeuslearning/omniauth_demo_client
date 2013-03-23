class AddUpdatedByToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :last_updated_by_uid, :string
  end
end
