class Podcast < ActiveRecord::Base
  belongs_to :user
  # validates :feed, format: { with : /\Ahttp:\/\//}
  validates :feed, format: { with: /\Ahttp:\/\//}
end
