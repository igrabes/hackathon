class Post < ActiveRecord::Base
  attr_accessible :body, :score, :title, :user_id
end
