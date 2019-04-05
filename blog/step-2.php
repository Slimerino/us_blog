<?php
require_once '../users/init.php';
require_once $abs_us_root.$us_url_root.'users/includes/header.php';
require_once $abs_us_root.$us_url_root.'users/includes/navigation.php';
if(isset($user) && $user->isLoggedIn()){
}
?>

<?php
$blogid = $_POST["blogid"];
$comment = $_POST["reply"];
$user = $user->data()->fname;
?>


<?php
$stmt = $pdo->prepare('INSERT INTO `sb_comments` (`id`, `author`, `comment`, `blogid`) VALUES (NULL, ?, ?, ?);');
$stmt->bindParam(1, $user, PDO::PARAM_STR);
$stmt->bindParam(2, $comment, PDO::PARAM_STR);
$stmt->bindParam(3, $blogid, PDO::PARAM_STR);
$stmt->execute();

header("location: index.php");

?>


<!-- footers -->
<?php require_once $abs_us_root.$us_url_root.'users/includes/page_footer.php'; // the final html footer copyright row + the external js calls ?>

<!-- Place any per-page javascript here -->


<?php require_once $abs_us_root.$us_url_root.'users/includes/html_footer.php'; // currently just the closing /body and /html ?>
