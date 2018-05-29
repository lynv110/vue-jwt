require('./bootstrap');


import Vue from 'vue'
import router from './router'
import App from './App.vue'


import axios from 'axios';
import VueAxios from 'vue-axios';

Vue.use(VueAxios, axios);

axios.defaults.baseURL = 'http://vue-jwt/api';

/*
Vue.router = router

Vue.use(require('@websanova/vue-auth'), {
    auth: require('@websanova/vue-auth/drivers/auth/bearer.js'),
    http: require('@websanova/vue-auth/drivers/http/axios.1.x.js'),
    router: require('@websanova/vue-auth/drivers/router/vue-router.2.x.js'),
});
App.router = Vue.router*/

const app = new Vue({
    el: '#app',
    router,
    render: h => h(App)
});
