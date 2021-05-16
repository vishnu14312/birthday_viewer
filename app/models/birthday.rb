class Birthday < ApplicationRecord
  belongs_to :user
  validates :name, :birthday, presence: true


  def schedule
  	schedule = IceCube::Schedule.new(now = birthday)
  	schedule.add_recurrence_rule(IceCube::Rule.yearly.count(50))
  	schedule
  end 
end
