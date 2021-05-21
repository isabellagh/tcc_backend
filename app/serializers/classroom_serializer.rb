class ClassroomSerializer
  include FastJsonapi::ObjectSerializer
  attributes :room_name, :age, :full, :teacher_name
end
