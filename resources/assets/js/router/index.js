import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

import AuthLogin from '../components/auth/Login.vue'
import CommonDashboard from '../components/common/Dashboard.vue'
import StaffStaffList from '../components/staff/StaffList.vue'

export default new VueRouter({
    mode: 'history',
    routes: [
        { path: '/', redirect: '/login', meta: {auth: false} },
        { path: '/login', name: 'AuthLogin', component: AuthLogin, meta: {auth: false}  },
        { path: '/dashboard', name: 'CommonDashboard', component: CommonDashboard, meta: {auth: true}  },
        { path: '/staff-list', name: 'StaffStaffList', component: StaffStaffList, meta: {auth: true}  },
    ]
})

console.log(this);