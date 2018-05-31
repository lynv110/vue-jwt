<template>
    <div :class="alertType" v-if="alertMessage">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <strong><i class="fa fa-info-circle"></i></strong>
        {{ alertMessage }}
    </div>
</template>


<script>
    export default {
        data() {
            return {

            }
        },
        props: ['alertType', 'alertMessage'],
    }
</script>