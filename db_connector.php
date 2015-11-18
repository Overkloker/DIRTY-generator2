<?php

class DBConnector
{

    public static $hostname = 'localhost';
    public static $username = 'root';
    public static $password = 'password';
    public static $dbName = 'generator';

    protected $mysqli = null;

    public function __construct() {
        if (!$this->mysqli) {
            $this->mysqli = new mysqli(self::$hostname, self::$username, self::$password, self::$dbName);
            if (!$this->mysqli) {
                echo mysqli_connect_error();
                exit;
            }
            $this->mysqli->set_charset("utf8");
        }
    }

    public function getUsersData() {
        $result = mysqli_query($this->mysqli, "SELECT * FROM users");
        $res = [];
        while($row = mysqli_fetch_assoc($result)){
            $res[] = $row;
        }

        return $res;
    }
}