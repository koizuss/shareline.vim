shareline.vim
====================

ローカルVimで見ているsrcをメンバーに共有する時に使用するプラグイン

今見ているsrcのカーソル行をリモートリポジトリのURLへ変換してyankします

※ VimのyankをOSのクリップボードと共有すると捗ります

## Requirements

- git

## Usage

Run `:ShareLine`

- 現在のファイル&カーソル行をGithubのURLに変換してyank

![shareline vim_usage_1](https://user-images.githubusercontent.com/639857/94299929-445e3c00-ffa3-11ea-902f-d46b06e2f25c.gif)

## Remarks

- いまのところGithubリポジトリにしか対応していません（今後他も対応したいBitbucketとかGitLabとか）
- 以下の環境でしか動作確認できていません :bow:
  - macOS 10.15.6（19G2021）
  - NVIM v0.4.4
  - git version 2.24.3 (Apple Git-128)

## Issues

- エラー処理
  - gitコマンドがない
  - gitリポジトリじゃない
  - remoteが設定されていない

## License

shareline.vim is distributed under Vim's [license][4].

[4]: http://vimdoc.sourceforge.net/htmldoc/uganda.html
