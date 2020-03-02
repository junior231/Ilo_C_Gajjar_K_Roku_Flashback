export default {
    template: `
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h1 class="user-message">{{ message }}</h1>
                    <div class="user-page">
                        <img src="images/count_olaf.jpg" alt="" class="user">
                        <img src="images/count_olaf.jpg" alt="" class="user">
                    </div>
            </div>
        </div>
    </div>
    `,

    data() {
        return {
            message: "Who's Using Roku?",
            userList: []
        }
    }
}