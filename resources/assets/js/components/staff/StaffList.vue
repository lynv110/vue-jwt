<template>
    <div style="background: #f1f1f1">
        <div v-if="staffs" class="list">
            <table class="table table-bordered table-striped table-hover">
                <thead>
                <tr>
                    <th>Full Name</th>
                    <th>Username</th>
                    <th>Telephone</th>
                    <th>Email</th>
                    <th>Created at</th>
                </tr>
                </thead>
                <tbody>
                <tr v-for="(staff, key) in staffs">
                    <td>{{ staff.name }}</td>
                    <td>{{ staff.username }}</td>
                    <td>{{ staff.telephone }}</td>
                    <td>{{ staff.email }}</td>
                    <td>{{ staff.created_at }}</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</template>

<script>

    export default {

        data: () => {
            return {
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
                console.log(response.data.staffs);
                console.log(localStorage.getItem('token'));

            }).catch(function (error) {
                console.log(error);
            });
        },
    }
</script>