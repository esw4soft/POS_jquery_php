<?php

// echo 'hello';
// echo "<meta charset='UTF-8' />";

$server_name = '127.0.0.1';
$username = 'pos_raybii_com';
$password = '3nYZDTjbiDYcJbmj';
$db_name = 'pos_raybii_com';

$link = @mysqli_connect($server_name, $username, $password, $db_name);

if ($link) {
    mysqli_query($link, 'set names utf8');
// echo '連結mysql資料庫成功';
} else {
    //否則就代表連線失敗 mysqli_connect_error() 是顯示連線錯誤訊息
    echo '連結mysql資料庫失敗'.mysqli_connect_error();
}
// echo 'test';
