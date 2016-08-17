class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.datetime :published_on, :required => false
      t.timestamps null: false
    end
  end
end
