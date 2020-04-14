
export default {
    name: "AdultsProfile",

    template: `
    <div id="AdultsProfile">
		<h1 class="hidden">Adutls Profile</h1>

		<div class="hero">
			<img src="images/retro_bg_2.webp" alt="Hero Banner" class="heroImage">
		</div>

		<div class="filterButtonsCon">
		<img src="images/adults_movies.png" class="filterButton" @click="fetchVideo()">
		<img src="images/adults_series.png" class="filterButton" @click="fetchShows()">
		<img src="images/music_icon.png" class="filterButton" @click="fetchMusic()">
		</div>

		<div v-if="showPlayer" class="playerCon" id="player">
			<div class="player">
				<span class="closePlayer" @click="hidePlayer">X</span>
				<h2>{{ currentMediaItem.Title }}</h2>
				<h2>Genre: {{ currentMediaItem.Genre }}</h2>
				<h2>{{ currentMediaItem.Year }}</h2>
				<p class="media-details" v-html="currentMediaItem.Cast">Movie Cast</p>

				<div class="mediaPlayer">
					<video v-if="currentMediaItem.Type != 'Music' " autoplay controls muted :src=" 'video/' + currentMediaItem.Media_source" class="fs-video"></video>

					<audio v-else autoplay controls :src="'audio/' + currentMediaItem.Source ">
							Your browser does not support the
							<code>audio</code> element.
					</audio>
				</div>
			</div>
		</div>

		<div class="mediaCon">
			<div class="mediaItem" v-for="item in media" @click="showItem(item)">
				<h2>{{ item.Title }}</h2>
				<img :src="'images/' + item.Media_cover"  alt="media thumb" class="thumbnail">
			</div>
		</div>
    </div>
    `,

    created: function () {
		this.fetchVideo();
	},

	data() {
		return {
			media: [],
			showPlayer: false,
			currentMediaItem: []
		}
	},

	methods: {
		fetchVideo() {
			let url = './admin/index.php?media=Movie';

			fetch(url) 
			.then(res => res.json())
			.then(data => this.media = data)
			.catch((error) => console.error(error))
			this.showPlayer = false;
		},

		fetchShows() {
			let url = './admin/index.php?media=TV';

			fetch(url) 
			.then(res => res.json())
			.then(data => this.media = data)
			.catch((error) => console.error(error))
			this.showPlayer = false;
		},

		fetchMusic() {
			let url = './admin/index.php?media=Music';

			fetch(url) 
			.then(res => res.json())
			.then(data => this.media = data)
			.catch((error) => console.error(error))
			this.showPlayer = false;
		},

		showItem(item){
			this.currentMediaItem = item;
			this.showPlayer = true;
		},

		hidePlayer(){
			this.showPlayer = false;
		}
    }
}