# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Site.delete_all
# . . .
Site.create(:title => 'Project Management',
            :permalink =>
%{<p>
Projects must operate in a broad organizational
environment
Project managers need to use systems thinking:
Taking a holistic view of carrying out projects within the
context of the organization
Senior managers must make sure projects
continue to support current business needs
</p>},

)
# . . .

