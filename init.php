<?php
    spl_autoload_register(function($search){
            include "classes/" . strtolower($search) . '.php';
        }
    );
    define('DBHOST', 'localhost');
    define('DBUSER', 'osei');
    define('DBPASS', '');
    define('DBNAME', 'justcare');