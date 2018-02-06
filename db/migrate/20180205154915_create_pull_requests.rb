class CreatePullRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :pull_requests do |t|
      t.string :title
      t.date :created_at
      t.integer :user_id
      t.string :review_status
      t.string :pulse_status

      t.timestamps
    end
  end
end
