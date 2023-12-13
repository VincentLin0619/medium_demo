class Story < ApplicationRecord
  belongs_to :user
  validates_presence_of :title, :content

  # default_scope { where(deleted_at: nil) }
  scope :deleted, -> { where.not(deleted_at: nil) }
  scope :published, -> { where(deleted_at: nil) }
  def destroy
    update(deleted_at: Time.now)
  end
end
