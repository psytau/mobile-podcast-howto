class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
      t.string :slug
      t.string :course_name
      t.string :podcast_name
      t.string :feed
      t.text :description

      t.timestamps
    end
  end
end
