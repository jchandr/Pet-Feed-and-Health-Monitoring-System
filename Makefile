heroku:
	git add .
	git commit -am "make it better"
	git push heroku master
	
setheroku:
	heroku git:remote -a petnanny

setgit:
	git remote set-url origin https://github.com/jchandr/Pet-Feeding-and-Health-Monitoring-System.git
	
git:
	git add .
	git commit -am "make it better"
	git push origin master
	git push -u origin master