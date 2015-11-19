<?php
require 'Names/NCL.NameCase.ua.php';

class Helper
{
    public $v = [
        'називний' => 0,
        'родовий' => 1,
        'давальний' => 2,
        'знахідний' => 3,
        'орудний' => 4,
        'місцевий' => 5,
        'кличний' => 6
    ];

    protected $userData = null;

    public function __construct($userData) {
        $this->userData = $userData;
    }

    public function getUserField($field, $vidm = null, $is_short = null) {
        $nc = new NCLNameCaseUa();

        if ($vidm != null && trim ($vidm) != '') {
            if ($field == 'Fname') {
                $res = $nc->q($this->userData['Fname'] . ' ' . $this->userData['Sname'])[$this->v[trim($vidm)]];
                $res = substr($res, 0, strpos($res, ' '));
            } else {
                $res = $nc->q($this->userData[$field])[$this->v[trim($vidm)]];
            }
        }
        else {
            $res = $this->userData[$field];
        }
        if ($is_short != null && trim ($is_short) != '') {
            $res = explode(' ', $res);
            if (count($res) > 1) {
                for ($i = 1; $i < count($res); $i++) {
                    $res[$i] = substr($res[$i], 0, 2) . '.';
                }
                $res = implode(' ', $res);
            }
            else {
                $res = substr($res[0], 0, 2) . '.';
            }
        }

        return $res;
    }

    public static function renderView($fileName, $vars = array())
    {
        foreach ($vars as $k => $v)
        {
            $$k = $v;
        }

        ob_start();
        include 'template/'.$fileName;
        return ob_get_clean();
    }

    public function performVars($vars) {
        $res = [];
        foreach ($vars as $v) {
            $res[$v['name']] = $this->getUserField($v['field'], $v['vidm'], $v['is_short']);
        }

        return $res;
    }
}