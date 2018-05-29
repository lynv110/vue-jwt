<div class="col-md-3 left_col">
    <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
            <a href="/" style="font-size: 19px;" class="site_title"><span>{{ trans('common/common.text_logo') }}</span></a>
        </div>
        <div class="clearfix"></div>
        <!-- menu profile quick info -->
        <div class="profile clearfix">
            <div class="profile_pic">
                <img src="{{ image_fit(Staff::getAvatar(), 70, 70) }}" alt="..." class="img-circle profile_img">
            </div>
            <div class="profile_info">
                <span>Welcome,</span>
                <h2><?php echo Staff::getName(); ?></h2>
            </div>
        </div>
        <!-- /menu profile quick info -->
        <br />
        <!-- sidebar menu -->
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
                <h3>General</h3>
                @if($menus)
                <ul class="nav side-menu">
                    @foreach($menus as $menu)
                    <li><a href="{{ $menu['href'] }}"><i class="{{ $menu['icon'] }}"></i> {{ $menu['name'] }} {{--<span class="fa fa-chevron-down"></span>--}}
                            @if(isset($menu['total']))
                            <span class="label label-success pull-right">{{ $menu['total'] }}</span>
                            @endif
                        </a>
                        {{--<ul class="nav child_menu">
                            <li><a href="index.html">Dashboard</a></li>
                            <li><a href="index2.html">Dashboard2</a></li>
                        </ul>--}}
                    </li>
                    @endforeach
                </ul>
                @endif
            </div>
        </div>
    </div>
</div>