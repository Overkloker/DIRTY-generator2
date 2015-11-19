<?php

class DBConnector
{

    public static $hostname = 'localhost';
    public static $username = 'root';
    public static $password = 'password';
    public static $dbName = 'db_people_fields';

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

    public function getUsersData($id = 0) {
        $result = mysqli_query($this->mysqli, "SELECT * FROM fields_table" . ($id == 0 ? '' : ' WHERE Id = ' . $id));
        $res = [];
        while($row = mysqli_fetch_assoc($result)){
            $res[] = $row;
        }

        return $res;
    }

    public function getAllUsers() {
        $result = mysqli_query($this->mysqli, "SELECT Id, Fname, Sname FROM fields_table");
        $res = [];
        while($row = mysqli_fetch_assoc($result)){
            $res[] = $row;
        }

        return $res;
    }

    public function getTemplateVars($id) {
        $result = mysqli_query($this->mysqli, "SELECT tv.`name`, tv.`field`, tv.`vidm` FROM `templates` t
        LEFT JOIN `template_vars` tv ON t.`id` = tv.`id_template`
        WHERE t.`id` = " . $id);
        $res = [];
        while($row = mysqli_fetch_assoc($result)){
            $res[] = $row;
        }

        return $res;
    }

    public function searchTemplateByName($name) {
        $result = mysqli_query($this->mysqli, "SELECT id FROM `templates` WHERE `name` = '$name'");
        $row = mysqli_fetch_assoc($result);

        return $row['id'];
    }
}