<?php
    include 'routes.php';
    include './init.php';
    header("Access-Control-Allow-Origin: *");
    header('Access-Control-Allow-Credentials: true');
    header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");
    header("Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With");
    header('Access-Control-Max-Age: 86400');

    $arr['username'] = 'osei kofi philip';
    $arr['age'] = 23;
    $db = new DB();
    print_r($db->table('users')->select()->where("id = : id", ["id" => 2]));

