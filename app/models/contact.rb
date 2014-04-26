class Contact <ActiveRecord::Base
  attr_accessible :name, :phone, :email # cм. seeds.rb file
  validates :name, :phone, :email, presence: true
end
