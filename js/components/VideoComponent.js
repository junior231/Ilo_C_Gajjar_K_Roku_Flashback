export default {
    name: "TheVideoComponent",

    template: `
    <section>
        <div class="row">
            <div class="col-12 order-2 order-md-1 col-md-3 media-container">
                <h4 class="media-title">{{currentMediaDetails.movies_name}}</h4>
                <p class="media-details" v-html="currentMediaDetails.movie_cast"></p>
                <span class="media-time">{{currentMediaDetails.movie_director}}</span>
                <span class="media-year">{{currentMediaDetails.movies_release}} </span>
            </div>

            <div class="col-12 order-1 order-md-2 col-md-9 media-container">
                <video autoplay controls muted :src="'video/' + currentMediaDetails.movie_trailer" class="fs-video"></video>
            </div>
        </div>

        <div class="row">
            <div class="col-12 col-sm-9">
                <div class="thumb-wrapper clearfix">
                    <img v-for="item in allRetrievedVideos" :src="'images/' + item.movie_cover" alt="media-thumb" @click="loadNewMovie(item)" class="img-thumbnail rounded float-left rounded media-thumb">
                </div>
            </div>
        </div>
    </section>
    `,

    data: function () {
        return {
            currentMediaDetails: {},
            allRetrievedVideos: []
        }
    },

    created: function() {
        this.retrieveVideoContent();
    },

    methods: {
        retrieveVideoContent() {
            // fetch all the video content here (don't care about filtering, genre etc at this point)
            // debugger;

            if (localStorage.getItem("cachedVideo")) {
                this.allRetrievedVideos = JSON.parse(localStorage.getItem("cachedVideo"));

                this.currentMediaDetails = allRetrievedVideos[0];

            } else {

                let url = './admin/index.php?media=movies';

                fetch(url)
                .then(res => res.json())
                .then(data => {
                    localStorage.setItem("cachedVideo", JSON.stringify(data));

                    this.allRetrievedVideos = data;
                    this.currentMediaDetails = data[0];
                })


            }




        },

        loadNewMovie(movie) {
            this.currentMediaDetails = movie;
        }
    }
}