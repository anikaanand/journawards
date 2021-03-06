README

**Note! If you're entering data you want to keep, do it on the [heroku app](https://cryptic-wave-8995.herokuapp.com). That's a different database than the test one you'll run locally. Use your local copy of the app to do things like change the layout, edit page copy, etc.**

To run this app locally:

0. If you don't have the files locally, you can pull down a fresh copy with `git clone <repo url>`, where the repo url is the clone repository url just over to the right of this page.
1. Navigate in your terminal window to the directory where you have the files locally. Use `ls` to see the contents of the currenty directory and `cd` to change directory (e.g. `cd Documents`)  
2. Make sure you are up-to-date with the remote version by running `git pull`  
3. Update any dependencies with `bundle install`  
4. Boot up postgres to host your database. with `pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start`  Note that this will not have data that you entered in the remote version!   
5. Keep your database up to date with all the latest schema changes `rake db:migrate`  
6. Get your rails server running with `rails s`. You can terminate the server by pressing Ctrl+C in the terminal window where the server is running (or just closing the terminal window and confirming on the dialog box)  


To deploy your local changes to Heroku:

1. check out the list of files you've changes with `git status`  
2. Add any changes or discard with `git add <file>` or `git checkout -- <file>`. If you deleted a file, you can add that change with `git rm <file>`. If you just want to add all the modified files use `git add .`  
3. Commit your changes (note that you don't need to put all your changes in one commit - you can do it in multiple if you like) with `git commit -m '<some message>'`  
4. Push your changes to github `git push origin master`  
5. Push your changes to heroku `git push heroku master` (that will take a minute)  
6. If you played around with the database schema or anything really substantial, it might be worth migrating the database in heroku `heroku run rake db:migrate`  



More notes!
* Once again, make sure you're putting any actual awards records in the site running in Heroku. Otherwise they're liable to get lost.
* Records entered in Heroku might show up mysteriously in your locally running version of the app when you search or look at the 'articles' page - that's OK. You won't be able to edit them or anything there, though; you'll need to go back to the app on Heroku.
* You can edit the css stylesheets in app/assets/stylesheets/
* All of the actual pages (and templates) are in app/views/ and the template for the reused elements (the nav header and footer) is app/views/templates/application.html.erb
* Anything you do locally to the stylesheets and layouts can always be undone if you don't like it, so definitely play around with it!
