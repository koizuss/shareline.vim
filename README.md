shareline.vim
====================

ローカルVimで見ているsrcをメンバーに共有する時に使用するプラグイン
今見ているsrcのカーソル行をリモートリポジトリのURLへ変換してyankします
※ VimのyankをOSのクリップボードと共有すると捗ります

## Usage

Run `:ShareLine`

- 現在のファイル&カーソル行をGithubのURLに変換してyank

## TODOs

- エラー処理
  - gitコマンドがない
  - gitリポジトリじゃない
  - remoteが設定されていない
