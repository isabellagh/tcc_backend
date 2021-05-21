class ChildSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :age, :avatar, :allergies, :special_needs, :classroom_id, :classroom
end
