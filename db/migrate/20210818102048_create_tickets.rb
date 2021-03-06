class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :description
      t.date :date
      t.boolean :open

      t.timestamps
    end
  end
end
