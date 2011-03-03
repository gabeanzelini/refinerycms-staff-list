require 'refinery'
require File.expand_path('../staff_members', __FILE__)

module Refinery
  module StaffMembers

    class Engine < Rails::Engine
      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "refinerycms_staff_list"
          plugin.menu_match = /(admin|refinery)\/staff_members?$/
          plugin.url = {:controller => 'admin/staff_members', :action => 'index'}
          plugin.activity = {
            :class => StaffMember,
            :title => 'name',
            :url_prefix => 'edit'
          }
        end
      end
    end

  end
end
