class Admin::StaffMembersController < Admin::BaseController

  crudify :staff_member, :order => "last_name ASC, first_name ASC", :title_attribute => :last_name

end
