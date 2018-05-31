<template>
    <div class="top_nav">
        <div class="nav_menu">
            <nav>
                <div class="nav toggle">
                    <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                </div>

                <ul class="nav navbar-nav navbar-right">
                    <li class="">
                        <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown"
                           aria-expanded="false">
                            <img :src="avatar" alt="">{{ staff_name }}
                            <span class=" fa fa-angle-down"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-usermenu pull-right">
                            <li>
                                <router-link to="/logout"><i class="fa fa-sign-out pull-right"></i> Logout</router-link>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</template>


<script>
    export default {

        data: () => {
            return {
                staff_name: '',
                avatar: ''
            }
        },

        created() {
            let config = {
                headers: {'Authorization': `Bearer ${localStorage.getItem('token')}`}
            };
            axios.get('/layout/nav', config).then((response) => {
                console.log(response);
                this.staff_name = response.data.staff_name;
                this.avatar = response.data.avatar;
            }).catch(function (error) {
                console.log(error);
            });
        },
    }
</script>