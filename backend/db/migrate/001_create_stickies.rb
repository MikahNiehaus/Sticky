class CreateStickies < ActiveRecord::Migration[6.0]
  def change
    create_table :stickies do |t|
      t.string :body
      t.boolean :important
      t.timestamps
    end
  end
end



