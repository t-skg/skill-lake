<?php
// index.php
session_start();

// ユーザー認証のチェック（実際の認証ロジックに置き換えてください）
$authenticated = true; // 仮の認証状態

if (!$authenticated) {
    header("Location: login-form.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/user-index.css">
    <title>SKILL LAKE プラットフォーム</title>
</head>
<body>
    <header class="header">
        <div class="logo"><a href="index.php">SKILL LAKE</a></div>
        <div class="user-info"><a href="logout_act.php"><?=$_SESSION["lid"]?>さん</a></div>
    </header>

    <nav class="sidebar">
        <div class="menu-item" data-page="pages\user-dashboad">
            <span class="menu-item-icon">◆</span>
            ダッシュボード
        </div>
        <div class="menu-item" data-submenu="案件">
            <span class="menu-item-icon">◆</span>
            案件
            <span class="menu-arrow">▼</span>
        </div>
        <div class="sub-menu">
            <div class="sub-menu-item" data-page="search-projects">案件を探す</div>
            <div class="sub-menu-item" data-page="considering-projects">検討中</div>
        </div>
        <div class="menu-item" data-submenu="提案">
            <span class="menu-item-icon">◆</span>
            提案
            <span class="menu-arrow">▼</span>
        </div>
        <div class="sub-menu">
            <div class="sub-menu-item" data-page="ongoing-proposals">提案中</div>
            <div class="sub-menu-item" data-page="scout-list">スカウトリスト</div>
        </div>
        <div class="menu-item" data-submenu="商談">
            <span class="menu-item-icon">◆</span>
            商談
            <span class="menu-arrow">▼</span>
        </div>
        <div class="sub-menu">
            <div class="sub-menu-item" data-page="negotiation-requests">商談希望リスト</div>
            <div class="sub-menu-item" data-page="ongoing-negotiations">商談中リスト</div>
        </div>
        <div class="menu-item" data-submenu="プロフィール">
            <span class="menu-item-icon">◆</span>
            プロフィール
            <span class="menu-arrow">▼</span>
        </div>
        <div class="sub-menu">
            <div class="sub-menu-item" data-page="pages\user-info">基本情報</div>
            <div class="sub-menu-item" data-page="pages\user-skill">ご経験・スキル</div>
        </div>
        <div class="menu-item" data-submenu="市場分析">
            <span class="menu-item-icon">◆</span>
            市場分析
            <span class="menu-arrow">▼</span>
        </div>
        <div class="sub-menu">
            <div class="sub-menu-item" data-page="project-data">案件データ</div>
            <div class="sub-menu-item" data-page="talent-data">人材データ</div>
        </div>
        <div class="menu-item" data-page="contracts">
            <span class="menu-item-icon">◆</span>
            契約
        </div>
        <div class="menu-item" data-page="contracts">
            <span class="menu-item-icon">◆</span>
            <a href="logout_act.php">ログアウト</a>
        </div>
    </nav>

    <main id="main-content" class="main-content">
        <!-- コンテンツがここに動的に読み込まれます -->
    </main>

    <script src="js/main.js"></script>
</body>
</html>