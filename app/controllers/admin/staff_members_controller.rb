class Admin::StaffMembersController < Admin::BaseController

  crudify :staff_member, :order => "name DESC"

end
