class CreateHostedFeeds < ActiveRecord::Migration
  def change
    create_table :hosted_feeds do |t|
      t.string :title
      t.string :slug
      t.text :description

      t.timestamps
    end
  end
end
