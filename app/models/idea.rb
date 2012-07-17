class Idea < ActiveRecord::Base
  attr_accessible :decription, :price, :title, :user_id

  belongs_to :user, :foreign_key => "user_id"
end
