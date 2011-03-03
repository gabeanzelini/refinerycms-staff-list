class StaffMember < ActiveRecord::Base
  belongs_to :image, :class_name => 'Image'

  validates_presence_of :name, :bio, :title, :category

  has_friendly_id :name, :use_slug => true

  acts_as_indexed :fields => [:name, :category]

  default_scope :order => "name DESC"

  def self.per_page
    20
  end

end
