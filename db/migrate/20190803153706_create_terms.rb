class CreateTerms < ActiveRecord::Migration[5.2]
  def change
    create_table :terms do |t|
      t.string :title, null: false
      t.text :contents

      t.timestamps null: false
    end
  end
end
