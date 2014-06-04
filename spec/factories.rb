FactoryGirl.define do
  factory :user do
    email "test_user_X@example.com"
    password "password12345"
  end

  factory :user2, class: User do
    email "test_user_2@example.com"
    password "password12345"
  end

  factory :valid_podcast, class: Podcast do
    slug "podcast1"
    course_name "English 101"
    podcast_name "Podcast 1"
    feed "http://feeeeeeed.com/feed.rss"
    description "A podcast for testing"
  end

  factory :invalid_feed_podcast, class: Podcast do
    slug "podcast1"
    course_name "English 101"
    podcast_name "Podcast 1"
    feed "feeeeeeed.com/feed.rss"
    description "A podcast for testing"
  end
end
