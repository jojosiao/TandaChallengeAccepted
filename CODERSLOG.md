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
