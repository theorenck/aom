class AttributeType < ActiveRecord::Base
  
  belongs_to :model_type
  
  has_many :subtypes, class_name: "AttributeType", foreign_key: "supertype_id"
  belongs_to :supertype, class_name: "AttributeType"
end
