<template>
    <div>
        <layout-menu></layout-menu>
        <layout-nav></layout-nav>
        <div class="right_col" role="main">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3>
                            Staff info
                        </h3>
                    </div>
                </div>
                <div class="clearfix"></div>
                <!--Content-->
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Staff info</h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <br/>
                                <div class="row" v-if="staff">
                                    <div class="col-xs-12 col-sm-7">
                                        <div class="form-group row">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 text-right" >Full name</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                {{ staff.name }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 text-right">Telephone</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                {{ staff.telephone }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 text-right">Address</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                {{ staff.address }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 text-right">Gender</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <span v-if="staff.gender == '0'">Male</span>
                                                <span v-else-if="staff.gender == '1'">Female</span>
                                                <span v-else>Other</span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 text-right">Birthday</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                {{ staff.birthday }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 text-right">Created at</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                {{ staff.created_at }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 text-right">Modified at</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                {{ staff.modified_at }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 text-right">Latest logged</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                {{ staff.login_at }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 text-right">Part</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <ul v-if="parts">
                                                    <li v-for="part in parts">{{ part }}</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 text-right">Position</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <ul v-if="positions">
                                                    <li v-for="position in positions">{{ position }}</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-5">
                                        <div class="form-group row">
                                            <label class="control-label col-md-4 col-sm-4 col-xs-12 text-right">Email</label>
                                            <div class="col-md-8 col-sm-8 col-xs-12">
                                                {{ staff.email }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-4 col-sm-4 col-xs-12 text-right">Username</label>
                                            <div class="col-md-8 col-sm-8 col-xs-12">
                                                {{ staff.username }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-4 col-sm-4 col-xs-12 text-right">Status</label>
                                            <div class="col-md-8 col-sm-8 col-xs-12">
                                                <span v-if="staff.status">Enable</span>
                                                <span v-else>Disable</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/Content-->
            </div>
        </div>
    </div>
</template>

<script>

    import LayoutNav from '../Layout/Nav.vue'
    import LayoutMenu from '../Layout/Menu.vue'

    export default {

        data: () => {
            return {
                staff: [],
                parts: [],
                positions: []
            }
        },

        created() {
            let config = {
                headers: {'Authorization': `Bearer ${localStorage.getItem('token')}`},
            };
            axios.get('/staff/staff-info/' + this.$route.query.id , config).then((response) => {
                console.log(response);
                this.staff = response.data.staff;
                this.parts = response.data.parts;
                this.positions = response.data.positions;

            }).catch(function (error) {
                console.log(error);
            });
        },

        components: {
            LayoutNav: LayoutNav,
            LayoutMenu: LayoutMenu,
        }
    }
</script>