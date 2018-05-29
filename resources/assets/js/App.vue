<template>
    <div>
        <ul class="list-unstyled list-inline">
            <li>
                <router-link :to="{name: 'AuthLogin'}">Login</router-link>
                <router-link :to="{name: 'CommonDashboard'}">Dashboard</router-link>
                <router-link :to="{name: 'StaffStaffList'}">Staff List</router-link>
            </li>
        </ul>
        <router-view></router-view>
    </div>
</template>
