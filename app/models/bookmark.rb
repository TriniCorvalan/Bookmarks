class Bookmark < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :kind, optional: true

  def to_s
    title
  end
end
