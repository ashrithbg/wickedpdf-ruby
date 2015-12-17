class CreateQuotes < ActiveRecord::Migration
  def change
     create_table :quotes do |t|
      t.integer :quote_number
      t.string :company_name
      t.string :advisor_name
      t.date :quote_date
	  t.timestamps
    end
  end
end
