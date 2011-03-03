class StaffMembersController < ApplicationController
  before_filter :find_page
  before_filter :find_staff_members, :only => [:index]

  def index
    # render 'index'
  end


protected

  def find_staff_members
    @staff_members = StaffMember.paginate(:page => params[:page],
                                  :per_page => StaffMember.per_page)
  end

  def find_page
    @page = Page.find_by_link_url("/staff_members")
  end

end
