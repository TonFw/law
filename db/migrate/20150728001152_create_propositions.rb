class CreatePropositions < ActiveRecord::Migration
  def change
    create_table :propositions do |t|
      t.string :name, limit: 25, null: false
      t.integer :year, null: false
      t.integer :number, null: false
      t.integer :remote_id, limit: 8, null: false
      t.datetime :presentation_date, null: false
      t.text :purpose_description, limit: 1000, null: false
      t.text :purpose_explanation, limit: 1000, null: false

      t.timestamps null: false
    end
  end
end