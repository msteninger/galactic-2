import "./bootstrap";
import { createApp } from 'vue'
import Announcements from './components/Announcements.vue'
import marked from 'marked'

const app = createApp()

app.component('announcements', Announcements)

app.mount('#app')