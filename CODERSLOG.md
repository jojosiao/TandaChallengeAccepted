2019-02-22
* I realized that there are many ways to do something for Rails.
  Like in my case during this day I am doing this, setting up
  migration files can be done by generating a model. with the generated
  model, the migration file is also created in db/schema/migrate.

  just type, *rails g model <ModelName> *

  To generate the migration file only, 

  just type, * rails g migration <MigrationName> *


  TODO:
  1.) I started creating the views ending in .html.erb.
      I already have some background in creating/editing .erb files.

  2.) To start working on user registration, login, and logout.


  2019-02-25
  I remember there was a bug discovered in Rails a long time ago
  about a mass assignment. Because of this, a feature was develop
  to limit the accessibility. To do this, 

private

    def user_params

        params.require(:user).permit(:name, :email, :password)

    end

TO DO: 
1.) displaying errors in registration form.
2.) saving data from a form, model forms.
UNRELATED THINGS TO DO:
1.) study open source Rails Apps to learn how things work.

2019-02-28
To have a validation on confirmation (matching 2 text fields), you just need


class User < ApplicationRecord 
    validates :email, confirmation: true  # to have a _confirmation text field in form
    validates :email_confirmation, presence: true # will require the checking the existence of this form field.

In older rails versions, I learned that sessions can be saved in database, by running this command, 
you'll set up a database table and save sessions in that table.

    rake db:sessions:create

but it seems this is gone now in rails 5.

TO DO:
1.) hash password when saving to database to hide password in plaintext.

2019-03-05
Today, I learned that Rails 5 updates db/schema.rb which is being run to deploy migration to db.
I think that when you type 

rails g model <name>

it generates model and its corresponding migration file which you can edit to add or remove columns.
The model file and the migration file are 2 separate files. They don't have any connection at all.

TO DO: 
I had to modify the migration files because the structure of the db is different from how I see it. the 
diagram in github is somehow misleading. 

It seems it is more appropriate to say that organizations has many users, and many shifts of users.
users have many shifts and has many organizations. and then, shifts belong to organizations and users.

organizations -> users
                      -> shifts

users -> organizations
          -> shiftsl

shift -> organization
       ->  user

2019-03-06
Ok, so now I got really confused with the functionality and the features that I am supposed to do.
I reverted the db schema to what the challenge requires. I re-read the details again and, because I am
using git, so, I don't have problems reverting my changes back to old code.

organizations
users->belongs_to->organization
shift->belongs_to->users

when the user is logged in, the dashboard shows all the organizations the user can join.
if the user joins or creates the organization, he will be under that organization and he will see 
in the dashboard that he can view the shifts, edit the details of the organization or leave the organization.

NOTE: Bryan Bibat has a great idea to create a validation that will check that if the password is provided, that will only start the validation of password confirmation. Good recommendation.

2019-03-07
Today, I learned about namespacing in routes for Rails 5. there is difference in declaring the namespace as a module, and as scope.l

see: https://guides.rubyonrails.org/routing.html#nested-resources

and: https://guides.rubyonrails.org/routing.html#controller-namespaces-and-routing

for more details.

changes in the db structure is as follows:

organizations-> has_many->shifts
users->belongs_to->organizations
users->has_many->shifts
shifts->belongs_to->users

NOTE: When you have changes on the migration and you don't want to create new migration file, you cannot just edit the existing migration file to make changes. You must do rollback first, and only then you can edit your migration file.

