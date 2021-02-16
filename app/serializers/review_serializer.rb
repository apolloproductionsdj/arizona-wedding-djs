class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :dj_id
end
