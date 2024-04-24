<script>
    import { ref } from 'vue'
    import { marked } from 'marked'

    export default {

        data () {
            return {
                apiData: null,
                page: 1
                }
            },

        methods: {
            fetchNews (pageNumber) {
                const apiUrl = `http://localhost:8001/api/messages?page=${pageNumber}` ;

                axios.get(apiUrl)
                .then((response) => {
                    this.apiData = response.data;
                })
                .catch((error) => {
                    console.error('Error fetching data:', error);
                });
            },
            nextPage () {
                this.page++;
                this.fetchNews(this.page);
            },
            prevPage () {
                this.page--;
                this.fetchNews(this.page);
            },
            markdownToHTML(content) {
                return marked(content);
            }
        },

        mounted() {
            this.fetchNews(this.page);
        }
    
    };
</script>

<template>
    <div>
        <div v-if="apiData">
            <ul>
                <li v-for="item in apiData">
                    <div v-html="markdownToHTML(item.content)"></div>
                </li>
            </ul>
            <button @click="prevPage()" v-if="(page > 1)">
                &lt; &lt; Previous
            </button>
            <button @click="nextPage()">
                Next &gt; &gt;
            </button>
        </div>
        <div v-else>
            no data
        </div>
    </div>
</template>