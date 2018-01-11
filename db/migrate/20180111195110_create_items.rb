class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.belongs_to :branch, foreign_key: true
      t.belongs_to :commit, foreign_key: true
      t.string :name
      t.string :location
      t.boolean :file
      t.boolean :folder

      t.timestamps
    end
  end
end
