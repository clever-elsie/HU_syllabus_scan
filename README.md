# HU_syllabus_scan
## 使い方(GCCとかpythonは自分で環境構築してくれ)
  1. GCC、pythonをインストール。pipでrequestsとbeautifulsoup4をインストール。Makefileを使うからgccと分けてインストールするより```sudo apt install build-essential```のほうがいいかも?(build-essentialに何が入ってるか知らん)
  1. このリポジトリをダウンロードする
  2. src/main.pyのurl_home=url+"urlの後半";で自分の学部のシラバスの"/"以後"2023_15.html"の部分をコピペする。(_15は情報科学部、総科は01、文学は02だったのでシラバスホームの上からの並び順だと思われる)
  4. UTF-8が正しく表示される環境のターミナルでMakefileと同じディレクトリに移動する
  5. 初回やデータの更新が必要なときは```python src/main.py```と```make release```、2回目以降は```./main```
  6. エクセル->上のリボンの「データ」の左から2番目の「テキストまたはCSVから」データの取得と変換を押し、syll/syl.csvを選択
  7. またはインタラクティブな操作を行う
  + 注意点として、2回目以降の起動でもダウンロードしたデータから.csvを組みなおすため起動に3秒ほどかかります。初回のダウンロード時はネットワーク環境次第ですが最低30秒ほどダウンロードに時間がかかると思います。
## インタラクティブモード
  + 学年 タームの順番で空白か改行区切りで入力するとその年度の授業の情報の概要を出力する
  + 具体的には「授業名」、「教師名」、「開講期間」、「曜日・時限・教室」、「成績評価」
  + それぞれの授業が1行で表示され、表示された順番に0から始まるIDが割り振られている
  + IDを入力するとその授業の詳細が表示される。
  + IDの範囲外の数字を入力するとまた学年、タームの選択に戻り無限ループ
  + 学年もタームも0を入力すると終了する
