class CreateAttributeTypes < ActiveRecord::Migration
  def change
    create_table :attribute_types do |t|
      t.string :code
      t.string :name
      t.string :type
      t.boolean :opcional, default: false
      t.boolean :multivalued, default: false
      t.references :model_type, index: true
      t.references :supertype, index: true

      t.timestamps
    end
  end
end
