<template>
    <div :class="alert" v-if="alert_message">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <strong><i class="fa fa-info-circle"></i></strong>
        {{ alert_message }}
    </div>
</template>


<script>
    export default {
        data() {
            return {
                alert: "alert alert-error",
            }
        },
        props: ['alert_type', 'alert_message'],
    }
</script>