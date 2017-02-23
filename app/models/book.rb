class Book < ActiveRecord::Base
  has_many :reviews, as: :reviewable
  has_one :evaluation, :dependent => :destroy
end
