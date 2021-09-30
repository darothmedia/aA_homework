class House < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |h|
      h.text :address

      h.timestamps
    end
  end
end
