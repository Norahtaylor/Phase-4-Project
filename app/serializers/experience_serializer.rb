class ExperienceSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :place_id, :location, :rating, :accompanied_by, :date_traveled, :highlights, :food_eated, :drinks, :worst_moment
end
