<?php
header('Content-type: text/html; charset=utf-8');
require 'db_connector.php';
require 'helper.php';

$connector = new DBConnector();

if (!isset($_GET['user']) && !isset($_GET['document'])) {
    $users = $connector->getAllUsers();
    $templates = $connector->getAllTemplates();
    echo(Helper::renderView('index.php', ['users' => $users, 'templates' => $templates]));
}
else {
    $users = $connector->getUsersData($_GET['user']);

    $helper = new Helper($users[0]);
    $nc = new NCLNameCaseUa();

    $template = $connector->searchTemplateByName($_GET['document']);

    $template_vars = $helper->performVars($connector->getTemplateVars($template));

    echo(Helper::renderView($_GET['document'] . '.php', $template_vars));
}