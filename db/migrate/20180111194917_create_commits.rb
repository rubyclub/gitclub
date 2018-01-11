class CreateCommits < ActiveRecord::Migration[5.1]
  def change
    create_table :commits do |t|
      t.belongs_to :branch, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
