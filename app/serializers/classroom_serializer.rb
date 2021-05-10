class ClassroomSerializer
  include FastJsonapi::ObjectSerializer
  attributes :room_name, :age, :full
end
