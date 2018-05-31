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
                                <div class="row">
                                    <div class="col-xs-12 col-sm-7">
                                        <div class="form-group row">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 text-right" for="name">{{ trans('staff.text_name') }}</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                {{ $info->name }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 text-right" for="name">{{ trans('staff.text_telephone') }}</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                {{ $info->telephone }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 text-right" for="name">{{ trans('staff.text_address') }}</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                {{ $info->address }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 text-right" for="name">{{ trans('staff.text_gender') }}</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                @if($info->gender == '0')
                                                {{ trans('staff.text_male') }}
                                                @elseif($info->gender == '1')
                                                {{ trans('staff.text_female') }}
                                                @else
                                                {{ trans('staff.text_other') }}
                                                @endif
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 text-right" for="name">{{ trans('staff.text_birthday') }}</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                {{ date_to_list($info->birthday) }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 text-right" for="name">{{ trans('staff.text_created_at') }}</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                {{ datetime_to_list($info->created_at) }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 text-right" for="name">{{ trans('staff.text_modified_at') }}</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                {{ datetime_to_list($info->modified_at) }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 text-right" for="name">{{ trans('staff.text_login_at') }}</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                {{ datetime_to_list($info->login_at) }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 text-right" for="name">{{ trans('staff.text_part') }}</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                @if($parts)
                                                <ul>
                                                    @foreach($parts as $part)
                                                    <li>{{ $part }}</li>
                                                    @endforeach
                                                </ul>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12 text-right" for="name">{{ trans('staff.text_position') }}</label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                @if($positions)
                                                <ul>
                                                    @foreach($positions as $position)
                                                    <li>{{ $position }}</li>
                                                    @endforeach
                                                </ul>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-5">
                                        <div class="form-group row">
                                            <label class="control-label col-md-4 col-sm-4 col-xs-12 text-right" for="avatar">{{ trans('staff.text_avatar') }}</label>
                                            <div class="col-md-8 col-sm-8 col-xs-12">
                                                @if(is_file(config('image.path') . $info->avatar))
                                                <img src="{{ image_fit($info->avatar, 100, 100) }}" alt="" class="img-thumbnail">
                                                @else
                                                <img src="{{ no_image() }}" alt="" class="img-thumbnail">
                                                @endif
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-4 col-sm-4 col-xs-12 text-right" for="name">{{ trans('staff.text_email') }}</label>
                                            <div class="col-md-8 col-sm-8 col-xs-12">
                                                {{ $info->email }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-4 col-sm-4 col-xs-12 text-right" for="name">{{ trans('staff.text_username') }}</label>
                                            <div class="col-md-8 col-sm-8 col-xs-12">
                                                {{ $info->username }}
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="control-label col-md-4 col-sm-4 col-xs-12 text-right" for="name">{{ trans('main.text_status') }}</label>
                                            <div class="col-md-8 col-sm-8 col-xs-12">
                                                @if($info->status)
                                                {{ trans('main.text_enabled') }}
                                                @else
                                                {{ trans('main.text_disabled') }}
                                                @endif
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