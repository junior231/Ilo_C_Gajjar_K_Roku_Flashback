
import router from "./components/Router.js";


(() => {


  const vm = new Vue({

    data: {
      authenticated: false,
      administrator: false,
      showNav: false,
      showFooter: false,
      user: [],

    },

    methods: {
      setAuthenticated(status, data) {
        this.authenticated = status;
        this.user = data;
      },

      ShowNavigation(user){
        this.user = user;
        this.showNav = true;
      },

      logout() {
        // push user back to login page
        this.$router.push({ name: "login" });
        this.authenticated = false;

        if(localStorage.getItem("cachedUser")) {
          localStorage.removeItem("cachedUser");
        }

        if(localStorage.getItem("cachedVideo")){
          localStorage.removeItem("cachedVideo");
        }
      },

      checkFooter(){
        if(this.$route.name === "kids" || this.$route.name === "adults" ){
          this.showFooter = true;
        } else {
          this.showFooter = false;
        }
      }

    },

    updated: function(){

      if (this.user.admin === 1 || this.user.admin === "1"){
        this.administrator = true;
      } else {
        this.administrator = false;
      }

      if(this.$route.name === "users"){
        this.showNav = false;
      }

      if(this.$route.name === "manageProfiles"){
        this.showNav = true;
      }

      this.checkFooter();
    },
    
    created: function(){
      // check for a user in local storage
      // if we've logged in before this will be here until we manually remove it

      if(localStorage.getItem("cachedUser")) {
        let user = JSON.parse(localStorage.getItem("cachedUser"));

        this.authenticated = true;
        this.user = user;
        this.showNav = true;
      }else{
        this.$router.push({ name: "login" }).catch(err => { });
      }
      
      if (this.user.permissions === 1 || this.user.permissions === "1") {
        this.$router.push({ name: "kids" }).catch(err => { });
      }  else if (this.user.permissions > 1 || this.user.permissions > "1") {
        this.$router.push({ name: "adults" }).catch(err => { });
      }
      
      if (this.user.admin === 1 || this.user.admin === "1"){
        this.administrator = true;
        console.log("admin");
      }

      this.checkFooter();

  },


    router: router
  }).$mount("#app");

  router.beforeEach((to, from, next) => {
  
    if (vm.authenticated == false) {
      next("/login");
    } else {
      next();
    }
  });

})();