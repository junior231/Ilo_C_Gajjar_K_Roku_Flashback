// todo => use a key to track the current video, or just pass the video in as a ref to the function and grab its source

Vue.component('player', {
  props: ['movie'],

  template: `
  <div>
    <h3 class="movie-title">{{ movie.videotitle }}</h3>
    <video :src="'video/' + movie.vidsource" controls autoplay></video>
    <div class="movie-details">
      <p>{{ movie.videodescription }}</p>
    </div>
  </div>
  `
})


var vm = new Vue({
  el: "#app",

  data: {

    // mock up the user - this will eventually come from the database UMS (user management system)
    user: {
      isLoggedIn: true,
      settings: {}
    },

    // this data would also come from the database, but we'll just mock it up for now
    videodata: [
      { name: "Star Wars The Force Awakens", thumb: "forceawakens.jpg", vidsource: "forceawakens.mp4", description: "yet another star wars movie" },
      { name: "Stranger Things", thumb: "strangerthings.jpg", vidsource: "strangerthings.mp4", description: "don't get lost in the upside down" },
      { name: "Marvel's The Avengers", thumb: "avengers.jpg", vidsource: "avengers.mp4", description: "will they make black widow action figures this time?" }
    ],

    movie: {
    videotitle: "video title goes here",
    vidsource: "",
    videodescription: "video description here"
    },

    showDetails: false
  },

  created: function() {
    // run a fetch call and get the user data
    console.log('created lifecycle hook fired here, go get user data')
    this.getUserData();
  },

  methods: {
    getUserData() {
      // do a fetch call here and get the user fro db
      const url = './includes/index.php?getUser=1';

      fetch(url) // get data from the DB
      .then(res => res.json()) // translate JSON from DB to plain object
      .then(data => { // use the plain data object (the user)
        console.log(data); // log it to the concole (testing)

        // put our DB data into Vue
        this.user.settings = data[0];
      })
      .catch((error) => console.error(error))
    },

    setUserPrefs() {
      // this is the preferences control, hit the api when ready ( or use a component)
      console.log('set user prefs here');
    },

    userLogin() {
      // call the login route, or load the login component
      console.log('do login/ logout on click');

      // this is a ternary statement -> shorthand for if/else
      // the expression evaluates to true or false - if it's true, set the value equal to
      // the left of the colon. if it;s false set the value equal to the right.
      this.user.isLoggedIn = (this.user.isLoggedIn) ? false : true;
    },

    showMovieDetails({name, vidsource, description}) {
      // console.log('show these details: ', movie);

      this.movie.videotitle = name;
      this.movie.vidsource = vidsource;
      this.movie.videodescription = description;

      // make the movie details show up
      this.showDetails = true;
    }
  }
});
