<template>
    <div>
        <div class="login_wrapper">
            <div class="animate form login_form">
                <section class="login_content">
                    <form @submit="login" method="post">
                        <h1>Login</h1>
                        <div class="alert alert-danger" v-if="error">
                            {{ error }}
                            <!--There was an error, unable to sign in with those credentials.-->
                        </div>

                        <div>
                            <input type="text" class="form-control" value="" placeholder="Username" v-model="username"
                                   name="username" required/>
                        </div>
                        <div>
                            <input type="password" class="form-control" name="password" v-model="password"
                                   placeholder="Password" required/>
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

        data() {
            return {
                username: null,
                password: null,
                error: false
            }
        },

        methods: {
            login(event) {
                event.preventDefault();
                axios.post('/auth/login', {
                    username: this.username,
                    password: this.password,
                }).then(function (response) {
                    console.log(response);
                    localStorage.setItem('token', response.headers.authorization);
                    console.log(localStorage.getItem('token'));

                }).catch(function (error) {
                    console.log(error);
                });
            },
        },
    }
</script>