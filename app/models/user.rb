class User < ActiveRecord::Base
  has_many :places
  has_many :comments, through: :places
end
