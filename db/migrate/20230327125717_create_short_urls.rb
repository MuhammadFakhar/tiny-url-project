class CreateShortUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :short_urls do |t|
      t.string :long_url, default: '', null: false
      t.string :short_code, default: '', null: false
      t.integer :access_count, default: 0, null: false
      t.timestamps
    end
  end
end