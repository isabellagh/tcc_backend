class ChildSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :age, :avatar, :allergies, :special_needs, :teacher_id, :teacher, :classroom_id, :classroom
end
