<template>
    <div class="col-md-3 left_col">
        <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
                <router-link to="/" style="font-size: 19px;" class="site_title">
                    <span>Staff manager system</span>
                </router-link>
            </div>
            <div class="clearfix"></div>
            <!-- menu profile quick info -->
            <div class="profile clearfix">
                <div class="profile_pic">
                    <img :src="avatar" alt="..." class="img-circle profile_img">
                </div>
                <div class="profile_info">
                    <span>Welcome,</span>
                    <h2>{{ staff_name }}</h2>
                </div>
            </div>
            <!-- /menu profile quick info -->
            <br/>
            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                <div class="menu_section">
                    <h3>General</h3>
                    <ul class="nav side-menu" v-if="menus" v-for="menu in menus">
                        <li>
                            <router-link :to="{path: menu.href}">
                                <i :class="menu.icon"></i> {{ menu.name }}
                                <span v-if="menu.total" class="label label-success pull-right">{{ menu.total }}</span>
                            </router-link>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</template>


<script>
    export default {

        data: () => {
            return {
                avatar: '',
                staff_name: '',
                menus: [],
            }
        },

        created() {
            let config = {
                headers: {'Authorization': `Bearer ${localStorage.getItem('token')}`}
            };
            axios.get('/layout/menu', config).then((response) => {
                console.log(response);
                this.menus = response.data.menus;
                this.avatar = response.data.avatar;
                this.staff_name = response.data.staff_name;
            }).catch(function (error) {
                console.log(error);
            });
        },
    }
</script>