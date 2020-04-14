export default {
    name: "AddUser",

    template: `
    <div class="editForm">
    
        <h1>Add User</h1>

        <div>
            <form>
            <h3 v-if="formFilled" class="errorMsg">Please Fill in all Required Fields</h3>
                <label for="name">Name</label>
                <input required v-model="input.name" type="text" name="name" id="name">

                <label for="username">Username</label>
                <input required v-model="input.username" type="text" name="username" id="username">

                <label for="password">Password</label>
                <input required v-model="input.password" type="text" name="password" id="password">

                <label for="email">Email</label>
                <input required v-model="input.email" type="text" name="email" id="email">

                <label for="avatar">Choose an avatar:</label>

                <select v-model="input.avatar" id="avatar" required>
                    <option value="">Please choose an option</option>
                    <option value="profile-leia.png">Leia</option>
                    <option value="profile-dean.png">Dean</option>
                    <option value="profile-spears.png">Spears</option>
                    <option value="profile-kids-lisa.png">Lisa</option>
                </select>

                <label for="permissions">What Kind of Profile</label>
                <select v-model="input.permissions" id="permission" required>
                    <option value="">Please choose an option</option>
                    <option value="3">Adult</option>
                    <option value="1">Kids</option>
                </select>

                <label for="admin">Admin?</label>
                <select v-model="input.admin" id="admin" required>
                    <option value="">Please choose an option</option>
                    <option value="0">No</option>
                    <option value="1">Yes</option>
                </select>
                
                <div class="editButtonsCon">
                    <button class="editButton" @click.prevent="addUser" type="submit" >Add User</button>
                    <button class="editButton cancelButton" @click.prevent="navToUsers">Cancel</button>
                </div>
            </form>
            
        </div>
    </div>
    `,

	data() {
		return {
			input: {
                fname: "",
                username: "",
                password: "",
                email: "",
                avatar: "",
                permissions: "",
                admin: ""
            },
            formFilled: false
		}
	},

	methods: {
        navToUsers(){
            this.$router.push({ name: "manageUsers" });
        },

        addUser(){

            if (this.input.username != "" && this.input.password != ""  && this.input.name != "" && this.input.email != "" && this.input.avatar != "" && this.input.permissions != "" && this.input.admin != ""){

                let formData = new FormData();

                formData.append("username", this.input.username);
                formData.append("password", this.input.password);
                formData.append("fname", this.input.name);
                formData.append("email", this.input.email);
                formData.append("avatar", this.input.avatar);
                formData.append("permissions", this.input.permissions);
                formData.append("admin", this.input.admin);
                // console.log(formData);
                // debugger;
                let url = `./admin/admin_createuser.php`;

                fetch(url, {
                    method: 'POST',
                    body: formData
                })
                .then(res => res.json())
                .catch(function (error) {
                    console.log(error);

                });

                this.$router.replace({ name: "manageUsers" });
            } else {
                this.formFilled = true;
            }


        }
    }
}