# Roku Flashback Project
<img src="/images/flashback_logo.png" alt="Roku Flashback Logo" width="200">

### Take a trip back to yesteryear with your old audio, tv and film faves!

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

You must have the following programs installed to view the application: 

* Docker
* MAMP/ WAMP

## Installing

Clone the repository and paste it into your terminal. This will download the project to your desired location. 

## Deployment

Using Docker: 

Open the project in your terminal, then paste the following and go.
```
$ docker-compose up
```

Then in the browser of your choice, paste the following url:
```
localhost:8050
```

Using MAMP/ WAMP:

Move the project folder into either your 'htdocs' or 'WWW' folder within MAMP or WAMP. Then navigate to your MAMP or WAMP server page and select the project.

Next, go to your phpmyadmin page and create a new database named 'db_roku_final'. Then import the database "db_roku_final" from the db folder in the proect folder. 

After the upload is completed, you will now be able to access the backend CMS. 

We use Vue on the front end, but not the CLI or webpack - just Vue with ES6 modules. Also - no jQuery, just plain old JavaScript.

#### Built with:

* Vue (bare bones - no webpack!)
* Vue-router  
* MySQL
* PHP
* JavaScript
* CSS3/SASS
* We use Gulp for tooling - check <code>gulpfile.js</code> for reference. NPM install should get you up and running with your dev tools.

## Authors

* **Collins Ilo - Lead Backend and Lead Frontend Developer**
* **Kahani Gajjar - Frontend Developer & Designer**

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Trevor Van Rys

## Login Credentials

* Username - user1
* password - password

## Video Folder

Due to the size of the video files it is not included in the repository, to download them here's the link

* https://drive.google.com/file/d/1WtJLZYD0_wYpcxgHZjhi08KagU2gOO8z/view?usp=sharing
