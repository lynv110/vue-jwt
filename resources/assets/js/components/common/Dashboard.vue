<template>
    <div>
        <layout-menu></layout-menu>
        <layout-nav></layout-nav>
        <div class="right_col" role="main">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3>
                            Dashboard page
                        </h3>
                    </div>
                </div>
                <div class="clearfix"></div>
                <!--Content-->
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        Dashboard page content
                        Dashboard page content
                        Dashboard page content
                        Dashboard page content
                        Dashboard page content
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
            }
        },

        components: {
            LayoutNav: LayoutNav,
            LayoutMenu: LayoutMenu,
        }
    }
</script>