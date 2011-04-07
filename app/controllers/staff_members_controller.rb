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
    catelog = {}
    staff_members.each do |staff_member|
      catelog[staff_member.category] ||= []
      catelog[staff_member.catelog] << staff_member
    end
    catelog 
  end

  def find_page
    @page = Page.find_by_link_url("/staff_members")
  end

end
