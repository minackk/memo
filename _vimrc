"""
" Dein TOML
" �v���O�C�������ۂɃC���X�g�[�������f�B���N�g��
" http://d.hatena.ne.jp/osyo-manga/20130307/1362621589
let s:dein_dir = expand('~\.cache\dein')
" dein.vim �{��
let s:dein_repo_dir = s:dein_dir . '\repos\github.com\Shougo\dein.vim'
" dein.vim ���Ȃ���� github ���痎�Ƃ��Ă���
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif
" �ݒ�J�n
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  " �v���O�C�����X�g�����߂� TOML �t�@�C��
  " �\�� TOML �t�@�C���i��q�j��p�ӂ��Ă���
  let g:rc_dir    = expand('~/vimfiles/rc')      "������ .vim �� vimfiles �ɕς���
  let s:toml      = g:rc_dir . '/dein.toml'
  "let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
  " TOML ��ǂݍ��݁A�L���b�V�����Ă���
  call dein#load_toml(s:toml,      {'lazy': 0})
  "call dein#load_toml(s:lazy_toml, {'lazy': 1})
  " �ݒ�I��
  call dein#end()
  call dein#save_state()
endif
" �����A���C���X�g�[�����̂��̂���������C���X�g�[��
if dein#check_install()
  call dein#install()
endif

set background=dark
colorscheme hybrid
syntax on

set showmode
set cursorline
set noundofile
set autoindent
set smartindent
set cindent

set tabstop=2 shiftwidth=2 softtabstop=0

autocmd FileType cpp setlocal sw=4 sts=4 ts=4 et

set shell=C:\windows\system32\cmd.exe

let g:neocomplete#enable_at_startup = 1

inoremap jj <ESC>
nnoremap <C-]> g<C-]>
nnoremap <silent> <leader>l :<C-u>Unite outline<CR>
nnoremap <silent> <leader>b :<C-u>Unite buffer<CR>

