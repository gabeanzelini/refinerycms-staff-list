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
      @staff_members = StaffMember.by_category(params[:id]).all
    else
      @staff_members = StaffMember.all
    end
  end

  def find_page
    @page = Page.find_by_link_url("/staff_members")
  end

end
