<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>receipt</title>
    <link rel="stylesheet" href="../style/style.css">
</head>
<body>
<div class="b-container">
    <div class="turning">
        <p><?=$who_position?></p>

        <p><?=$who_name?></p>

        <p>студента групи ПІс-14-1</p>

        <p><?=$fname.' '.$sname.' '.$tname?></p>
    </div>
    <div class="content">
        <h1>Розписка</h1>

        <p>
            Я, <?=$position?> <?=$fname_n.' '.$sname_s.' '.$tname_s?>, отримав
            від
            завідувача бібліотеки Данько Е.П. для тимчасового користування на час канікул 5 підруників.

        <div class="signature">
            <p class="date-left"><?=$date?></p>
            <p class="signature-right">
                Підпис _______________________
            </p>
            <div class="signature-left">
                <p>Підпис студента <?=$fname_n.' '.$sname_s.' '.$tname_s?> засвідчую</p>

                <p><?=$who_position_n?> (підпис) _________________________</p>
            </div>


        </div>

        </p>
    </div>
</div>
</body>
</html>