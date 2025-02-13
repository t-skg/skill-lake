<?php
session_start();
include("funcs.php");

//LOGINチェック
sschk();

//1. DB接続
  //funcs.phpに接続先を記載 

//2．データ取得SQL作成
$pdo = db_conn();
$sql    = "SELECT * FROM gs_user_table";
$stmt   = $pdo->prepare($sql);
$status = $stmt->execute();

//3．データ表示
$values = "";
if($status==false) {
  sql_error($stmt);
}

//4.全データ取得
$values =  $stmt->fetchAll(PDO::FETCH_ASSOC); //PDO::FETCH_ASSOC[カラム名のみで取得できるモード]
$json = json_encode($values,JSON_UNESCAPED_UNICODE);
?>

<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>データベース【SKILL LAKE】</title>
  <link rel="stylesheet" href="css/select.css">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <style>div{padding: 10px;font-size:16px;}</style>
</head>
<body id="main">

  <header>
    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <div class="navbar-header">
          <?=$_SESSION["lid"]?>さん、こんにちは！
          <a class="navbar-brand" href="index.php">トップページへ</a>
          <a class="navbar-brand" href="signin-form.php">データ登録</a><var>
          <a class="navbar-brand" href="logout_act.php">ログアウト</a></var>
      </div>
        </div>
      </div>
    </nav>
  </header>

  <div>
    <div class="container jumbotron">

    <table>
  <tr>
    <th>ID</th>
    <th>ユーザー名</th>
    <th>パスワード</th>
    <?php if(isset($_SESSION["kanri_flg"]) && $_SESSION["kanri_flg"]=="1"): ?>
    <th>詳細 </th>
    <th>削除</th>
    <?php endif; ?>
  </tr>
  <?php foreach($values as $v): ?>
    <tr>
      <td><?=htmlspecialchars($v["ID"], ENT_QUOTES, 'UTF-8')?></td>
      <td><?=htmlspecialchars($v["lid"], ENT_QUOTES, 'UTF-8')?></td>
      <td><?=htmlspecialchars($v["lpw"], ENT_QUOTES, 'UTF-8')?></td>
      <?php if(isset($_SESSION["kanri_flg"]) && $_SESSION["kanri_flg"]=="1"): ?>
        <td><a href="detail.php?ID=<?=urlencode($v["ID"])?>">詳細</a></td>
        <td><a href="delete.php?ID=<?=urlencode($v["ID"])?>" onclick="return confirm('本当に削除しますか？');">削除</a></td>
      <?php endif; ?>
    </tr>
  <?php endforeach; ?>
</table>
    </div>
  </div>

</body>

</html>