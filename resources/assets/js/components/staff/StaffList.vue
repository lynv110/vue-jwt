<template>
    <div>
        <layout-menu></layout-menu>
        <layout-nav></layout-nav>
        <div class="right_col" role="main">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3>
                            {{ heading_title }}
                        </h3>
                    </div>
                </div>
                <div class="clearfix"></div>
                <!--Content-->
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>{{ heading_title }}</h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <form id="form" class="form-horizontal form-label-left" method="post">
                                    <table id="datatable-checkbox"
                                           class="table table-striped table-bordered bulk_action">
                                        <thead>
                                        <tr>
                                            <th><input type="checkbox" class="flat check-all"></th>
                                            <th>Full name</th>
                                            <th>Telephone</th>
                                            <th>Username</th>
                                            <th>Email</th>
                                            <th class="text-center">Status</th>
                                            <th class="text-right">Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td></td>
                                            <td><input type="text" class="form-control" value="" name="filter_name">
                                            </td>
                                            <td><input type="text" class="form-control" value=""
                                                       name="filter_telephone"></td>
                                            <td><input type="text" class="form-control" value="" name="filter_username">
                                            </td>
                                            <td><input type="text" class="form-control" value="" name="filter_email">
                                            </td>
                                            <td class="text-center">
                                                <select name="filter_status" id="status"
                                                        class="form-control col-md-7 col-xs-12">
                                                    <option value=""></option>
                                                    <option value="0">Disable</option>
                                                    <option value="1">Enable</option>
                                                </select>
                                            </td>
                                            <td class="text-right">
                                                <a class="btn btn-sm btn-primary filter">Filter</a>
                                            </td>
                                        </tr>
                                        <tr v-if="staffs" v-for="(staff, key) in staffs">
                                            <td>
                                                <input type="checkbox" :value="staff.id" name="id[]" class="flat check">
                                            </td>
                                            <td>{{ staff.name }}</td>
                                            <td>{{ staff.telephone }}</td>
                                            <td>{{ staff.username }}</td>
                                            <td>{{ staff.email }}</td>
                                            <td class="text-center">
                                                <i class="fa fa-check-circle text-primary" v-if="staff.status"></i>
                                                <i class="fa fa-times-circle text-danger" v-else></i>
                                            </td>
                                            <td class="text-right">
                                                <router-link :to="{name: 'StaffStaffEdit', query: { id: staff.id }}" class="btn btn-sm btn-primary">Edit</router-link>
                                                <router-link :to="{name: 'StaffStaffInfo', query: { id: staff.id }}" class="btn btn-sm btn-success">Info</router-link>
                                            </td>
                                        </tr>
                                        <tr v-else>
                                            <td colspan="8" class="text-center">
                                                Not found record
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <div>
                                        Pagination
                                    </div>
                                </form>
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
                heading_title: '',
                staffs: []
            }
        },

        created() {
            let config = {
                headers: {'Authorization': `Bearer ${localStorage.getItem('token')}`}
            };
            axios.get('/staff/staff-list', config).then((response) => {
                console.log(response);
                this.staffs = response.data.staffs;
                this.heading_title = response.data.heading_title;

                console.log(localStorage.getItem('token'));

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