class Movie < ActiveRecord::Base
  def self.with_ratings(ratings_list,sortby)
  # if ratings_list is an array such as ['G', 'PG', 'R'], retrieve all
  #  movies with those ratings
  # if ratings_list is nil, retrieve ALL movies
    if sortby
      return Movie.where({rating: ratings_list}).order(sortby)
    else
      return Movie.where({rating: ratings_list})
    end
  end
  
  def self.all_ratings
      return ['G','PG','PG-13','R']
  end
end
