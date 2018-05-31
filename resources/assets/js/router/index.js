import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

import AuthLogin from '../components/auth/Login.vue'
import CommonDashboard from '../components/common/Dashboard.vue'
import StaffStaffList from '../components/staff/StaffList.vue'

import StaffStaffInfo from '../components/staff/StaffInfo.vue'
import StaffStaffEdit from '../components/staff/StaffEdit.vue'

export default new VueRouter({
    mode: 'history',
    routes: [
        { path: '/', redirect: '/login', meta: {auth: false} },
        { path: '/login', name: 'AuthLogin', component: AuthLogin, meta: {auth: false}  },
        { path: '/dashboard', name: 'CommonDashboard', component: CommonDashboard, meta: {auth: true}  },
        { path: '/staff-list', name: 'StaffStaffList', component: StaffStaffList, meta: {auth: true}  },
        { path: '/staff-edit', name: 'StaffStaffEdit', component: StaffStaffEdit, meta: {auth: true}  },
        { path: '/staff-info', name: 'StaffStaffInfo', component: StaffStaffInfo, meta: {auth: true}  },
    ]
})

console.log(this);