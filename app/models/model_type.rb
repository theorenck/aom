class ModelType < ActiveRecord::Base

	has_many :attribute_types

	has_many :subtypes, class_name: "ModelType", foreign_key: "supertype_id"
  belongs_to :supertype, class_name: "ModelType"

  accepts_nested_attributes_for :attribute_types, allow_destroy: true

	# validates :attribute_types, length: { minimum: 1 }

end
