export default {
    name: "LogIn",

    template: `
    <div id="loginCon">
        <div id="login">
        <h2>Sign In</h2>
            <form>
                <h3 v-if="authenticationFailed" class="errorMsg">Authentication failed, please try again!</h3>
                <h3 v-if="formFilled" class="errorMsg">A Username and Password Must Be Present</h3>
                <label for="">Username</label>
                <input type="text" name="username" v-model="input.username" placeholder="Username" required>

                <label for="">Password</label>
                <input type="password" name="password" v-model="input.password" placeholder="Password" required>

                <button v-on:click.prevent="login()" type="submit" class="submitButton">SIGN IN</button>
            </form>
        </div>
    </div>
    `,

    data() {
        return {
            input: {
                username: "",
                password: ""
            },

            formFilled: false,
            authenticationFailed: false
        }
    },

    methods: {
        login() {
            this.authenticationFailed = false;
            this.formFilled = false;   

            if (this.input.username != "" && this.input.password != "") {
                // fetch the user from the DB
                // generate the form data
                let formData = new FormData();

                formData.append("username", this.input.username);
                formData.append("password", this.input.password);

                let url = `./admin/admin_login.php`;

                fetch(url, {
                    method: 'POST',
                    body: formData
                })
                    .then(res => res.json())
                    .then(data => {
                        if (typeof data != "object") { // means that we're not getting a user object back
                            //console.warn(data);

                            this.input.username = "";
                            this.input.password = "";
                            this.authenticationFailed = true;
                        } else {
                            this.$emit("authenticated", true, data);
                            this.formFilled = false;
                            this.$router.replace({ name: "users" });
                            this.authenticationFailed = false;

                        }
                    })
                    .catch(function (error) {
                        console.log(error);

                    });
            } else {

                this.formFilled = true;
            }
        }
    }
}