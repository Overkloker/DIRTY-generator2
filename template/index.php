<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User</title>
    <link rel="stylesheet" href="../style/style.css">
</head>
<body>
<div class="b-container">
    <div class="popup">
        <form method="get">
            <select name="user" class="selector-user">
                <option disabled>Оберіть користувача</option>
                <?php
                    foreach ($users as $user) {
                        echo "<option value='{$user['Id']}'>{$user['Fname']} {$user['Sname']}</option>";
                    }
                ?>
            </select>

            <select name="document" class="selector-document">
                <option disabled>Оберіть документ</option>
                <?php
                    foreach ($templates as $template) {
                        echo "<option value='{$template['name']}'>{$template['title']}</option>";
                    }
                ?>
            </select>
            <input class="button-submit-select" type="submit" value="Обрати">
        </form>
    </div>
</div>
</body>
</html>