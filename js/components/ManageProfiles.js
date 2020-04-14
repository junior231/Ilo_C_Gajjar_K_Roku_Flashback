export default {
    name: "ManageProfiles",

    template: `
    <div>
        <div class="allUsers">
            <h2>Manage Users</h2>
            
            <div class="usersCon">
                <div v-for="(user, index) in userList" :key="index" class="user">
                    <img :src="'images/users/' + user.avatar" class="avatar">
                    <h3>{{ user.userfname }}</h3>

                    <div class="conButtons">
                        <button class="editButton" @click="navToEditUser(user)">Edit</button>
                        <button class="editButton cancelButton" @click="deletUser(user)">Delete</button>
                    </div>
                </div>

                <div class="user">
                    <img src="images/add.svg" alt="Add Button Image" @click="navToAddUser" class="avatar">
                    <h3>Add User</h3>
                </div>
            </div>

            
        </div>
    </div>
    `,

    created: function () {
		this.fetchAllUsers();
    },
    
    updated: function(){

        // this.fetchAllUsers();
    },

	data() {
		return {
			userList: []
		}
	},

	methods: {
		fetchAllUsers() {
			let url = './admin/admin_getusers.php?allusers=true';
            
			fetch(url) 
			.then(res => res.json())
			.then(data => this.userList = data)
            .catch((error) => console.error(error))
            
        },
        
        navToAddUser(){
            this.$router.push({ name: "addUser" });
        },

        navToEditUser(user){
            this.$router.push({ name: "editUser", params: { currentuser: user } });
        },

        deletUser(user){

            let url = `./admin/admin_deleteuser.php?id=${user.id}`;

            fetch(url, {
                method: 'DELETE'
            })
            .then(res => res.json())
            .catch((err) => console.log(err))

		    this.fetchAllUsers();
        }
        
    }
}