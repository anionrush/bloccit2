class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  
  after_save :update_post
  
  validates :value, inclusion: { in: [-1, 1], message: "%{value} is not a valid vote." }, presence: true

private
 
  def update_post
    puts "start: #{__method__} => #{post.rank}"
    post.update_rank
    puts "end:   #{__method__} => #{post.rank}"
  end
   
end
