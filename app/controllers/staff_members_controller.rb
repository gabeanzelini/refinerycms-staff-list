class StaffMembersController < ApplicationController
  before_filter :find_page
  before_filter :find_staff_members, :only => [:index,:show]

  def index
    # render 'index'
  end

  def show
    render 'index'
  end


protected

  def find_staff_members
    if params[:id]
      @catalog = catalog StaffMember.by_category(params[:id]).all
    else
      @catalog = catalog StaffMember.all
    end
  end

  def catalog(staff_members)
    catalog = {}
    staff_members.each do |staff_member|
      catalog[staff_member.category] ||= []
      catalog[staff_member.category] << staff_member
    end
    catalog 
  end

  def find_page
    @page = Page.find_by_link_url("/staff_members")
  end

end
