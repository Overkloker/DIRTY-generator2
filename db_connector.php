<?php

class DBConnector
{

    public static $hostname = 'localhost';
    public static $username = 'root';
    public static $password = 'password';
    public static $dbName = 'generator';

    protected $isConnected = false;

    protected function connect() {
        setlocale(LC_ALL, 'ua_UA.UTF-8');

        mysql_connect(self::$hostname, self::$username, self::$password) or die('No connect with data base');
        mysql_query('SET NAMES utf-8');
        mysql_select_db(self::$dbName) or die('No data base');

        return true;
    }

    public function _construct() {
        if (!$this->isConnected && $this->connect()) {
            $this->isConnected = true;
        }
    }

    public function getUsersData() {
        $query = "SELECT * FROM articles ORDER BY id_article DESC";
        $result = mysql_query($query);

        var_dump($result);die();
    }
}