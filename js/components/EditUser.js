export default {
    name: "EditUser",

    props: ['currentuser'],

    template: `
    <div class="editForm">
    
        <h1>Edit User</h1>

 
            
            <img :src="'images/users/' + currentuser.avatar" class="avatarEdit">
            <h2 class="currentUserEdit">{{ currentuser.userfname }}</h2>

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
                    <option value="harleyquinn.png">Harley Quinn</option>
                    <option value="ironman.png">Ironman</option>
                    <option value="count_olaf.jpg">Trevor</option>
                    <option value="batman.png">Baby</option>
                </select>

                <label for="permissions">Type of Profile</label>
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
                    <button class="editButton" @click.prevent="editUser" type="submit" >Edit User</button>
                    <button class="editButton cancelButton" @click.prevent="goBack">Cancel</button>
                </div>
            
            </form>
            
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
                admin: "",
                id: this.currentuser.id
            },
            formFilled: false

		}
	},

	methods: {
        goBack(){
            this.$router.push({ name: "manageProfiles" });
        },

        editUser(){
            console.log('fired');
            if (this.input.username != "" && this.input.password != ""  && this.input.name != "" && this.input.email != "" && this.input.avatar != "" && this.input.permissions != "" && this.input.admin != ""){

                let formData = new FormData();

                formData.append("username", this.input.username);
                formData.append("password", this.input.password);
                formData.append("fname", this.input.name);
                formData.append("email", this.input.email);
                formData.append("avatar", this.input.avatar);
                formData.append("permissions", this.input.permissions);
                formData.append("admin", this.input.admin);
                formData.append("id", this.input.id);
                // console.log(formData);
                // debugger;
                let url = `./admin/admin_edituser.php`;

                fetch(url, {
                    method: 'POST',
                    body: formData
                })
                .then(res => res.json())
                .catch(function (error) {
                    console.log(error);

                });

                this.$router.push({ name: "manageProfiles" });
            } else {
                this.formFilled = true;
            }


        }
    }
}