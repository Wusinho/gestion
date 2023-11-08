class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :slug
      t.string :description
      t.integer :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end