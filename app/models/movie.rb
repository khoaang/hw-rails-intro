class Movie < ApplicationRecord
  def self.with_ratings(ratings_list)
    if ratings_list.nil?
      Movie.all
    else
      Movie.where(rating: ratings_list)
    end
  end
end