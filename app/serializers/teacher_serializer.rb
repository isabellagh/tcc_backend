class TeacherSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :age, :image, :classroom_id, :classroom 
end
