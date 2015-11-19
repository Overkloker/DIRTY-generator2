<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Order</title>
    <link rel="stylesheet" href="../style/style.css">
</head>
<body>

<div class="b-container">
    <div class="content">
        <h1>НАКАЗ № 07-к</h1>
        <h2>по особовому складу</h2>

<div class="signature-wrapper">
    <p class="signature-date-left">
        <?=$address;?>
    </p>
    <p class="signature-right">
        <?=date('d. m. Y', strtotime($date));?> р.
    </p>
</div>

        <div class="content">
            <h3>прийняти:</h3>

            <?=$fname.' '.$sname.' '.$tname?>, на посаду провідного фахівця відділу проектування і впровадження проектів компанії, з
            17 січня 2010 року з окладом згідно зі штатним розкладом, встановивши йому випробувальний термін три місяці.
<p class="basis">
    <span>ПІДСТАВА:</span> заява <span><?=$who?></span>, штатний розклад.
</p>


            <?=$who_position?> ________________________
        </div>
        </div>


</div>
</body>
</html>