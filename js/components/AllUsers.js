export default {
    name: "AllUsers",

    template: `
	<div class="allUsers">
		<h2>Who is Watching?</h2>
		<div class="usersCon">
			<div v-for="(user, index) in userList" :key="index" @click="navToUserHome(user)" class="user">
				<img :src="'images/users/' + user.avatar" class="avatar">
				<h3>{{ user.userfname }}</h3>
			</div>
		</div>

    </div>
    `,

    created: function () {
		this.fetchAllUsers();
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

		navToUserHome(user){

			if (user.permissions === 1 || user.permissions === "1") {
                this.$router.push({ name: "kids" })
            }  else if (user.permissions > 1 || user.permissions > "1") {
                this.$router.push({ name: "adults" })
            }
            
            localStorage.setItem("cachedUser", JSON.stringify(user));
            this.$emit("shownav", user);
		}
    }
}