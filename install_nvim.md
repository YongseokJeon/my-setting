# Introduction

Vim 대신 다들 NVIM (NeoVIM) 을 쓰고 있더라.
나도 써야겠다...

# Installation

## Windows

- Pre-built archive 를 이용해서 설치했다.
- https://github.com/neovim/neovim/wiki/Installing-Neovim 참고
- 적절한 디렉토리에 압축 해제
- 환경 변수에 해당 디렉토리 추가
- nvim 명령어로 Powershell에서 잘 작동하는 것을 확인

# Configuration

- vim에서 `.vimrc`에 해당하는 파일을 어디에 둬야함?

## Windows

- `:echo stdpath('config')` 입력해볼것
- 보통 `%userprofile%\AppData\Local\nvim\init.vim` 이 경로에 있음
- `.vimrc`가 아니라 `init.vim` 인 것을 명심


# Plugin Manager

플러그인 매니저를 안쓸수 없지

vim-plug 설치 https://github.com/junegunn/vim-plug

플러그인 쓰는건 더 배워야겠다

# CoC

- node.js 가 필요하니 설치가 필요함
- `:CocInstall <LSP server>`
  - Example. `:CocInstall coc-clangd`

## C

- clangd 를 제대로 쓰기 위해서는
https://clangd.llvm.org/installation.html#project-setup

- CoC autocomplete
  - next: Ctrl-n
  - prev: Ctrl-p
  - select: Ctrl-y
