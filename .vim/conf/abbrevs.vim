"
" author:    QIAO Nan <qiaonancn@gmail.com>
" modified:  2015 Feb 13
"

"-- abbrevs --"

iab _au author:    QIAO Nan <qiaonancn@gmail.com>
iab _mo <c-r>="modified:  " . strftime("%Y %b %d")<cr>
iab _todo <c-r>="# TODO (by QIAO Nan) " . strftime("%Y %b %d")<cr>
iab _cmt <c-r>="# (comment by QIAO Nan " . strftime("%Y %b %d") . ")"<cr>

iab _na QIAO Nan 
iab _ma qiaonancn@gmail.com
iab _da <c-r>=strftime("%Y %b %d")<cr>

iab _fn <c-r>=bufname("%")<cr>
iab _pl #!/usr/bin/env perl

iab _xt http://linuxtoy.org
iab _xm <!--more-->

iab _ene echo $cmd && eval $cmd
