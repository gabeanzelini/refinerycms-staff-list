class StaffMember < ActiveRecord::Base
  belongs_to :image, :class_name => 'Image'

  validates_presence_of :last_name, :first_name, :title, :category

  default_scope :order => "last_name ASC, first_name ASC"

  scope :by_category, lambda{|cat| where('category like ?',cat)}

  def self.categories
    self.all.map(&:category).sort.uniq
  end

  def self.per_page
    20
  end

  def name
    "#{first_name} #{last_name}"
  end

end
