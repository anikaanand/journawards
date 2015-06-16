README

To run this app locally:

1) Navigate in your terminal window to the directory where you have the files locally. Use `ls` to see the contents of the currenty directory and `cd` to change directory (e.g. `cd Documents`)  
2) Make sure you are up-to-date with the remote version by running `git pull`  
3) Update any dependencies with `bundle install`  
4) Boot up postgres to host your database. with `pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start`  Note that this will not have data that you entered in the remote version!   
5) Keep your database up to date with all the latest changes `rake db:migrate`  
6) Get your rails server running with `rails s`. You can terminate the server by pressing Ctrl+C in the terminal window where the server is running (or just closing the terminal window and confirming on the dialog box)  


If you don't have the files locally, you can pull down a fresh copy with `git clone <repo url>`, where the repo url is the clone repository url just over to the right of this page.

Note! If you're entering data you want to keep, do it on the heroku app (link to come). That's a different database than the test one you'll run locally. Use your local copy of the app to do things like change the layout, edit page copy, etc.


To deploy your local changes to Heroku:

1) check out the list of files you've changes with `git status`  
2) Add any changes or discard with `git add <file>` or `git checkout -- <file>`. If you deleted a file, you can add that change with `git rm <file>`. If you just want to add all the modified files use `git add .`  
3) Commit your changes (note that you don't need to put all your changes in one commit - you can do it in multiple if you like) with `git commit -m '<some message>'`  
4) Push your changes to github `git push origin master`  
5) Push your changes to heroku `git push heroku master` (that will take a minute)  
6) If you played around with the database schema or anything really substantial, it might be worth migrating the database in heroku `heroku run rake db:migration`  
