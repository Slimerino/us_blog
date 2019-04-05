
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>tickets</title>
    <style>
        .panel {
            width: 50%;
            text-align: left;
            margin: 50px;
            box-shadow: 10px 10px grey;
        }
        body {
            text-align: center;
        }
        .main {
            background-color: white;
        }
    </style>
</head>
<body>
<center>
    <div class="main">
        <?php
        require_once '../users/init.php';
        require_once $abs_us_root.$us_url_root.'users/includes/header.php';
        require_once $abs_us_root.$us_url_root.'users/includes/navigation.php';
        if(isset($user) && $user->isLoggedIn()){
        }
        ?>
        <?php if (!securePage($_SERVER['PHP_SELF'])){die();}?>

         <?php
        $stmt = $pdo->prepare('SELECT * FROM `sb_blog` ') ;
$stmt->execute();
$result = $stmt->fetchAll();
if ($stmt->rowCount() != 0) {
        foreach ($result as $row) {
            echo "
        <div class=\"panel panel-default\">
        <h5 class=\"panel-heading\">".$row["author"]." </h5>
        <div class=\"panel-body\">
            <p class=\"card-text\">".$row["message"]."</p>
            <hr>
        </div>
        <a class=\"btn btn-primary\" href=\"read.php?id=".$row["id"]."\">Read More</a>
    </div>
        ";
            }} else {
            echo "<div class=\"alert alert-danger\" role=\"alert\">
  No blog's yet!
</div>";
        } ;
        ?>
    </div>
</center>
</body>
</html>

<!-- footers -->
<?php require_once $abs_us_root.$us_url_root.'users/includes/page_footer.php'; // the final html footer copyright row + the external js calls ?>

<!-- Place any per-page javascript here -->


<?php require_once $abs_us_root.$us_url_root.'users/includes/html_footer.php'; // currently just the closing /body and /html ?>




