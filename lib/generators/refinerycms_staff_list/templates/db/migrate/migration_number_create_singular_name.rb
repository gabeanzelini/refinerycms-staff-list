class Create<%= table_name.camelize %> < ActiveRecord::Migration

  def self.up
    create_table :<%= table_name %>, :id => true do |t|
<% attributes.each do |attribute| -%>
      t.<%= attribute.type %> :<%= attribute.name %>
<% end -%>
      t.timestamps
    end

    add_index :<%= table_name %>, :id

    load(Rails.root.join('db', 'seeds', 'refinerycms_staff_list.rb').to_s)
  end

  def self.down
    UserPlugin.destroy_all({:name => "refinerycms_staff_list"})

    Page.delete_all({:link_url => "/staff_members"})

    <%= class_name %>.drop_translation_table!

    drop_table :<%= table_name %>
  end

end
