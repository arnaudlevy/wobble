class Wob < ApplicationRecord
  belongs_to :user

  def to_s
    "#{text}"
  end
end
