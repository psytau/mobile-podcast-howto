class Podcast < ActiveRecord::Base
  belongs_to :user
  belongs_to :hosted_feed  # because it has one feed,
                    # but a feed can have more than one
                    # podcast model because a feed can be
                    # reused for other how-tos
  # validates :feed, format: { with : /\Ahttp:\/\//}
  validates :feed, format: { with: /\Ahttp:\/\//}
end
