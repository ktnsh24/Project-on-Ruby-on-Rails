class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :date
      t.string :connection
      t.string :country
      t.string :platform
      t.string :app
      t.integer :impressions
      t.integer :ad_revenue

      t.timestamps
    end
  end
end
