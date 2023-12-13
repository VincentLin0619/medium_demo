class AddDeleteAtToStory < ActiveRecord::Migration[6.1]
  def change
    add_column :stories, :deleted_at, :datetime, default: nil
    add_column :stories, :index, :string
  end
end
