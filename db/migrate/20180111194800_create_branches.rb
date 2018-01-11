class CreateBranches < ActiveRecord::Migration[5.1]
  def change
    create_table :branches do |t|
      t.belongs_to :project, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
