class Survey < ActiveRecord::Base
  belongs_to :creator, class_name: "User", foreign_key: "id"
  has_many :rounds
  has_many :questions

  validates_presence_of :title
end
