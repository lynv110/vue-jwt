<template>
    <div>
        <div class="login_wrapper">
            <div class="animate form login_form">
                <section class="login_content">
                    <form @submit.prevent="login" method="post">
                        <h1>Login</h1>
                        <div class="alert alert-danger" v-if="error">
                            {{ error }}
                            <!--There was an error, unable to sign in with those credentials.-->
                        </div>

                        <div>
                            <input type="text" class="form-control" value="" placeholder="Username" v-model="username" name="username" required/>
                        </div>
                        <div>
                            <input type="password" class="form-control" name="password" placeholder="Password" required/>
                        </div>
                        <div>
                            <button type="submit" class="btn btn-primary submit">Login</button>
                            <a class="reset_pass" href="/">Forgot password?</a>
                        </div>
                        <div class="clearfix"></div>
                    </form>
                </section>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</template>

<script>

    export default {

        data: () => ({
            error: '',
            username: '',
            password: '',
        }),

        mounted() {
            console.log('Component mounted.')
        }
    }
</script>