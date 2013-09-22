class Post < ActiveRecord::Base
  attr_accessible :body, :score, :title

  belongs_to :user
end
