class Site < ActiveRecord::Base
  attr_accessible :title, :permalink, :body, :created_at, :updated_at
  default_scope :order => 'title desc'
  validates :title, :permalink, :body, :created_at, :updated_at, :presence => true
  validate :title, :uniqueness => true
  has_many :comments, :dependent => :destroy
end
