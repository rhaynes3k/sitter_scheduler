class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :address
      t.datetime :date/time
      t.string :duration
      t.references :sitter, null: false, foreign_key: true
      t.references :guardian, null: false, foreign_key: true

      t.timestamps
    end
  end
end
