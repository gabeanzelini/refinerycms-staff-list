Gem::Specification.new do |s|
  s.name              = %q{refinerycms-staff-list}
  s.version           = %q{1.0}
  s.description       = %q{A way to post new staff_members to RefineryCMS-driven website.}
  s.date              = %q{2011-03-01}
  s.summary           = %q{A way to post new staff_members to RefineryCMS-driven website.}
  s.email             = %q{me@gabeanzelini.com}
  s.homepage          = %q{http://gabeanzelini.com}
  s.authors           = %w(Gabe Anzelini)
  s.require_paths     = %w(lib)

  s.add_dependency    'refinerycms', '~> 0.9.9'

  s.files             = [
    'app',
    'app/controllers',
    'app/controllers/admin',
    'app/controllers/admin/staff_members_controller.rb',
    'app/controllers/staff_members_controller.rb',
    'app/models',
    'app/models/staff_member.rb',
    'app/views',
    'app/views/admin',
    'app/views/admin/staff_members',
    'app/views/admin/staff_members/_form.html.erb',
    'app/views/admin/staff_members/_staff_member.html.erb',
    'app/views/admin/staff_members/edit.html.erb',
    'app/views/admin/staff_members/index.html.erb',
    'app/views/admin/staff_members/new.html.erb',
    'app/views/staff_members',
    'app/views/staff_members/_recent_staff_members.html.erb',
    'app/views/staff_members/index.html.erb',
    'app/views/staff_members/index.rss.builder',
    'app/views/staff_members/show.html.erb',
    'config',
    'config/locales',
    'config/locales/en.yml',
    'config/routes.rb',
    'lib',
    'lib/gemspec.rb',
    'lib/generators',
    'lib/generators/refinerycms_staff_list',
    'lib/generators/refinerycms_staff_list/templates',
    'lib/generators/refinerycms_staff_list/templates/db',
    'lib/generators/refinerycms_staff_list/templates/db/migrate',
    'lib/generators/refinerycms_staff_list/templates/db/migrate/migration_number_create_singular_name.rb',
    'lib/generators/refinerycms_staff_list/templates/db/seeds',
    'lib/generators/refinerycms_staff_list/templates/db/seeds/seed.rb',
    'lib/generators/refinerycms_staff_list_generator.rb',
    'lib/staff_members.rb',
    'lib/refinerycms-staff-list.rb',
    'license.md',
    'readme.md'
  ]
  s.test_files        = [
  ]
end
