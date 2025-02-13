<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login-form.css">
    <title>サインイン【SKILL LAKE】</title>

</head>
<body>
    <div class="container">
        <div class="login-section">
            <h3>サインイン</h3>
            <div class="section-content">
                <form name=userid action="signin_act.php" method="post">
                    <input placeholder="ID名もしくはメールアドレス" name="lid" required>
                    <input type="password" placeholder="パスワード" name="lpw" required>
                    <button>サインイン</button>
                </form>
            </div>
        </div>
        <div class="external-login-section">
            <h3>外部アカウントでサインイン</h3>
            <div class="section-content">
                <div class="sns-login">
                    <button style="background-color: #DB4437;">
                        <span>Google</span>でサインイン
                    </button>
                    <button style="background-color: #4267B2;">
                        <span>Facebook</span>でサインイン
                    </button>
                    <button style="background-color: #1DA1F2;">
                        <span>Twitter</span>でサインイン
                    </button>
                    <button style="background-color: #0077B5;">
                        <span>LinkedIn</span>でサインイン
                    </button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
