class StaffMember < ActiveRecord::Base
  belongs_to :image, :class_name => 'Image'

  validates_presence_of :name, :bio, :title, :category

  has_friendly_id :name, :use_slug => true

  acts_as_indexed :fields => [:name, :category]

  default_scope :order => "name DESC"

  scope :by_category, lambda{|cat| where('category like ?',cat)}

  def self.categories
    self.all.map(&:category).sort.uniq
  end

  def self.per_page
    20
  end

end
