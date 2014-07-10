class CreateModelTypes < ActiveRecord::Migration
  def change
    create_table :model_types do |t|
      t.string :code
      t.string :name
      t.references :supertype, index: true
      t.timestamps
    end
  end
end
