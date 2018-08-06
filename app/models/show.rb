class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.order(rating: :desc).limit(1)[0]
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    self.order(rating: :asc).limit(1)[0]
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where(rating: 5)
  end
end

# * `ratings_sum`: returns the sum of all of the ratings.
# * `popular_shows`: returns an array of all of the shows that have a rating greater than `5`. *hint*: use the `where` Active Record method.
# * `shows_by_alphabetical_order`: returns an array of all of the shows sorted by alphabetical order according to their names. *hint*: use the `order` Active Record method.
