# Resumé site
This is my first portfolio site where I can show some of the work I have done. Currently it only contains work from the Craftacademy bootcamp. Come back for future updates.

# Building and deploying
This static site is created with Middleman framework for static websites.

### Building
To build the site from the root project folder do
```middleman build```
followed by
```middleman deploy```
in order to deploy to github pages. See more at [https://github.com/middleman-contrib/middleman-deploy]

To deploy to surge cd into the root folder and type
```surge```
into the terminal and log in to surge with your credentials. If you don't have signed up to Surge yet you will get the opportunity to do so at this step.
To redeploy do
```surge --<your deployed to domain>```
or use a CNAME file. See more at [https://www.youtube.com/watch?time_continue=74&v=-EjdMvYPSVU]

# TO-DO
- fix the menu so that the drop-down works on small screens
- fix so that the img content in the link boxes is centered, alternatively add images as box backgrounds and work with onClick objects inside the box
- upgrade to make use of Foundation's full capacity through an nmp install of one of the starter projects (perhaps the advanced projet starter pack?)
- add icons representing the languages used in the holder-body, depending on what the yml file has in store
- update responsive font to ho fixed intervals in screen sizes
