<?php
    if(isset($arrObj)){
        echo '<pre>';
        $arrObj = $_POST || $_GET || $_PUT || $_DELETE ;
        print_r($arrObj);
        $url_type = $_SERVER['REQUEST_METHOD'];
        // echo $url_type;
        $db_name = isset($arrObj['db']) ? $arrObj['db'] : 'justcare';
        $table = isset($arrObj['table']) ? $arrObj['table']: '';
        $id = isset($arrObj['id']) ? $arrObj['id']: '';
        $user_name = isset($arrObj['user_name']) ? $arrObj['user_name']: '';
        $email = isset($arrObj['email']) ? $arrObj['email']: '';
        $password = isset($arrObj['password']) ? $arrObj['password']: '';
    }else{
        return json_encode(['data'=> null, 'success' => false, 'error' => 'false or null parameters given']);
        die;
    }