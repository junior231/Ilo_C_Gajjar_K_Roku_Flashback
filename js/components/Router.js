import LoginComponent from "./LoginComponent.js";
import AllUsers from "./AllUsers.js";
import AdultsProfile from "./AdultsProfile.js";
import KidsProfile from "./KidsProfile.js";
import ManageProfiles from "./ManageProfiles.js";
import AddUser from "./AddUser.js";
import EditUser from "./EditUser.js";




const routes = [
      { path: '/', redirect: { name: "login" } },
      { path: '/login', name: "login", component: LoginComponent },
      { path: '/users', name: "users", component: AllUsers },
      { path: '/home-adults', name: "adults", component: AdultsProfile },
      { path: '/home-kids', name: "kids", component: KidsProfile },
      { path: '/manage-users', name: "manageProfiles", component: ManageProfiles},
      { path: '/add-user', name: "addUser", component: AddUser},
      { path: '/edit-user', name: "editUser", component: EditUser, props: true }
]

const router = new VueRouter({
    // mode: "history",
    routes
})

export default router
