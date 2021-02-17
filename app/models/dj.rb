class Dj < ApplicationRecord
    has_many :reviews 

    before_create :slugify 

    def slugify
        self.slug = name.parameterize
    end

    def avg_score
        return 'No Rating Yet' unless reviews.average(:score).present?

        reviews.average(:score).round(2).to_f
    end
end
