<?php




// ログインユーザーの情報を取得する処理（実際の実装に合わせて調整してください）
$user = [
    'name' => '',
    'kana' => '',
    'birth_date' => '',
    'gender' => '',
    'phone' => '',
    'email' => '',
    'postal_code' => '',
    'prefecture' => '',
    'city' => '',
    'address1' => '',
    'address2' => '',
    'occupation' => '',
    'nationality' => ''
];

// フォームが送信された場合の処理
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // ここでPOSTデータを処理し、データベースを更新する処理を実装
    // 例: $user = $_POST; saveUserInfo($user);
}
?>




<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>スキル・経験詳細登録（最終版）</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 1200px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1, h2, h3 {
            color: #333;
        }
        .skill-section {
            margin-bottom: 30px;
        }
        .skill-subsection {
            margin-left: 20px;
            margin-bottom: 20px;
        }
        .skill-item {
            margin-bottom: 10px;
        }
        label {
            display: inline-block;
            margin-right: 10px;
        }
        select, input[type="text"], input[type="number"] {
            width: 200px;
            padding: 5px;
            margin-right: 10px;
        }
        textarea {
            width: 100%;
            height: 100px;
            padding: 5px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 10px;
        }
        button:hover {
            background-color: #45a049;
        }
        .add-item {
            background-color: #008CBA;
        }
        .add-item:hover {
            background-color: #007B9A;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>スキル・経験詳細登録（最終版）</h1>
        <form id="detailedSkillsExperienceForm">
            <div class="skill-section">
                <h2>1. IT・テクノロジースキル</h2>
                
                <div class="skill-subsection">
                    <h3>1.1 フロントエンド</h3>
                    <div id="frontendLanguages">
                        <!-- JavaScript で動的に追加 -->
                    </div>
                    <button type="button" class="add-item" onclick="addSkillItem('frontendLanguages', 'frontend')">追加</button>
                </div>

                <div class="skill-subsection">
                    <h3>1.2 バックエンド</h3>
                    <div id="backendLanguages">
                        <!-- JavaScript で動的に追加 -->
                    </div>
                    <button type="button" class="add-item" onclick="addSkillItem('backendLanguages', 'backend')">追加</button>
                </div>

                <!-- 他のIT・テクノロジースキルのサブセクションも必要に応じて追加 -->
            </div>

            <div class="skill-section">
                <h2>2. ビジネススキル</h2>
                <div id="businessSkills">
                    <!-- JavaScript で動的に追加 -->
                </div>
                <button type="button" class="add-item" onclick="addSkillItem('businessSkills', 'business')">追加</button>
            </div>

            <div class="skill-section">
                <h2>3. 業界経験</h2>
                <div id="industryExperience">
                    <!-- JavaScript で動的に追加 -->
                </div>
                <button type="button" class="add-item" onclick="addIndustryExperience()">追加</button>
            </div>

            <div class="skill-section">
                <h2>4. 語学</h2>
                <div id="languages">
                    <!-- JavaScript で動的に追加 -->
                </div>
                <button type="button" class="add-item" onclick="addLanguage()">追加</button>
            </div>

            <div class="skill-section">
                <h2>5. 資格</h2>
                <div id="certifications">
                    <!-- JavaScript で動的に追加 -->
                </div>
                <button type="button" class="add-item" onclick="addCertification()">追加</button>
            </div>

            <div class="skill-section">
                <h2>6. 経験業務、プロジェクト</h2>
                <div id="projects">
                    <!-- JavaScript で動的に追加 -->
                </div>
                <button type="button" class="add-item" onclick="addProject()">追加</button>
            </div>

            <div class="skill-section">
                <h2>7. その他</h2>
                <div>
                    <label for="githubLink">GitHub/GitLabリンク:</label>
                    <input type="text" id="githubLink" name="githubLink">
                </div>
                <div>
                    <label for="portfolioLink">ポートフォリオリンク:</label>
                    <input type="text" id="portfolioLink" name="portfolioLink">
                </div>
      
            <!-- 他のセクションは変更なし -->

            <button type="submit">登録</button>
        </form>





    </div>

    <script>
        const skillLevels = ['初級', '中級', '上級', 'エキスパート'];
        const experienceYears = ['0-1年', '1-3年', '3-5年', '5-10年', '10年以上'];
        const frontendSkills = ['HTML', 'CSS', 'JavaScript', 'TypeScript', 'React', 'Vue.js', 'Angular', 'Svelte', 'jQuery', 'Bootstrap', 'Tailwind CSS', 'Sass/SCSS', 'WebGL', 'その他'];
        const backendSkills = ['Java', 'Python', 'Ruby', 'PHP', 'C#', 'Go', 'Node.js', 'Express', 'Django', 'Ruby on Rails', 'Spring', '.NET', 'FastAPI', 'GraphQL', 'RESTful API', 'その他'];
        const businessSkills = ['デジタルマーケティング', 'コンテンツマーケティング', 'SEO/SEM', 'ソーシャルメディアマーケティング', 'B2B営業', 'B2C営業', 'インサイドセールス', 'カスタマーサクセス', '財務分析', '会計', '税務', '人材採用', '人材育成', '労務管理', 'プロジェクトマネジメント', 'アジャイル/スクラム', 'データ分析', '市場調査', 'ビジネスインテリジェンス', 'グラフィックデザイン', 'UI/UXデザイン', 'ビデオ制作・編集', '3Dモデリング・アニメーション', 'その他'];
        const industries = ['IT・通信', '金融・保険', '製造', '小売・流通', '医療・ヘルスケア', '教育', 'エネルギー・資源', '不動産', '観光・ホスピタリティ', '自動車', '航空・宇宙', '農業', '建設', 'メディア・エンターテインメント', 'その他'];

        function createSelect(options, name) {
            let select = `<select name="${name}">`;
            options.forEach(option => {
                select += `<option value="${option}">${option}</option>`;
            });
            select += '</select>';
            return select;
        }

        function addSkillItem(containerId, skillType) {
            const container = document.getElementById(containerId);
            const itemDiv = document.createElement('div');
            itemDiv.className = 'skill-item';
            let skillOptions;
            switch(skillType) {
                case 'frontend':
                    skillOptions = frontendSkills;
                    break;
                case 'backend':
                    skillOptions = backendSkills;
                    break;
                case 'business':
                    skillOptions = businessSkills;
                    break;
                default:
                    skillOptions = [];
            }
            itemDiv.innerHTML = `
                ${createSelect(skillOptions, 'skillName')}
                ${createSelect(skillLevels, 'skillLevel')}
                ${createSelect(experienceYears, 'experienceYears')}
            `;
            container.appendChild(itemDiv);
        }

        function addIndustryExperience() {
            const container = document.getElementById('industryExperience');
            const itemDiv = document.createElement('div');
            itemDiv.className = 'skill-item';
            itemDiv.innerHTML = `
                ${createSelect(industries, 'industryName')}
                ${createSelect(experienceYears, 'industryExperience')}
            `;
            container.appendChild(itemDiv);
        }

        // 初期項目の追加
        window.onload = function() {
            addSkillItem('frontendLanguages', 'frontend');
            addSkillItem('backendLanguages', 'backend');
            addSkillItem('businessSkills', 'business');
            addIndustryExperience();
        };

        document.getElementById('detailedSkillsExperienceForm').addEventListener('submit', function(e) {
            e.preventDefault();
            // ここでフォームの送信処理やバリデーションを行う
            alert('スキルと経験が登録されました。実際のアプリケーションでは、ここでデータを処理します。');
        });
    </script>
</body>
</html>