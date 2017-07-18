   <div class="navbar navbar-inverse">
        <div class="navbar-inner">
            <div class="pull-right">
                <form name="clock">
                    <i id="clock" class="icon-time"></i>
                    <input  class="span2" id="trans" type="submit"  name="face" value="">
                </form>
            </div>
            <div class="date">
                <i class="icon-calendar " id="clock"></i>
                <?php
                $Today = date('y:m:d');
                $new = date('l, F d, Y', strtotime($Today));
                echo $new;
                ?>
            </div>
            <div class="welcome">
            </div>
        </div>
    </div>
    <marquee><h3 class="btn-danger">Hotline: 01728-386978, 01789-987654, 01876-543213, 01793-153935 (9am to 11pm)</h3></marquee>