class AddReposTable < ActiveRecord::Migration[5.0]
  def change
    create_table :repos do |t|
      t.string :url

      t.timestamps
    end
  end
end
