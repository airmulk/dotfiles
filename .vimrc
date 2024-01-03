set nocompatible
filetype off

" https://gist.github.com/novusnota/65dcc593df6d9909ffb59eb83fe69a28
" -----------------------------
" --- Частичная русификация ---
" -----------------------------

" >>> Решение 1, в лоб

" Работа с вводом (INSERT) без переключения раскладки
noremap ш i
noremap Ш I
noremap ф a
noremap Ф A
noremap щ o
noremap Щ O

" Работа с заменой (REPLACE) без переключения раскладки
noremap к r
noremap К R

" Работа с режимом выделения (VISUAL) без переключения раскладки
noremap м v
noremap М V

" Работа с поиском:
" следующее и предыдущее совпадение без переключения раскладки
noremap т n
noremap Т N

" Копировать, удалить и вставить без переключения раскладки
noremap н y
noremap Н Y
noremap в d
noremap В D
noremap ч x
noremap Ч X
noremap з p
noremap З P

" Перемещения к началу/концу слов без переключения раскладки
noremap ц w
noremap Ц W
noremap у e
noremap У E
noremap и b
noremap И B

" Некоторые прочие русские буквы
noremap й q
noremap Й Q
noremap с c
noremap С C
noremap п g
noremap П G

" Тут важен именно map, чтобы в дальнейшем
" можно было убрать стандартное действие
" (удаление символа/строки и переход в режим INSERT)
map ы s
map Ы S

" Одинарные кавычки: ' в режиме ввода (INSERT) по нажатию Ctrl+э
inoremap <C-э> '

" Двойные кавычки: " в режиме INSERT по нажатию Ctrl+Shift+Э
" Решётка/хэштег: # в режиме INSERT по нажатию Ctrl+Shift+Три

" Меньше-больше/угловые скобки: < и > в режиме INSERT дают
" Ctrl+Shift+б и Ctrl+Shift+ю соответственно

"" Квадратные скобки так не работают:
"" noremap <C-х> [
"" noremap <C-ъ> ]

" Потому что конфликтуют с управляющими последовательностями ANSI

" НО, можно использовать Compose key
" См. https://ru.wikipedia.org/wiki/Compose
" Тут больше символов указано: https://fsymbols.com/keyboard/linux/compose/

" Так, [ и ] можно ввести с помощью Compose+(+( и Compose+)+) соответственно
" А { и } можно вводить с помощью Compose+-+( и Compose+-+) соответственно

" <<<

filetype plugin indent on

syntax on
set number
set tabstop=4
set expandtab
set scrolloff=10
set incsearch
set ignorecase
set smartcase
set showcmd
set showmatch
set hlsearch
set history=1000




set statusline=
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+==%=
set statusline+=\ row:\ %l\ col:\ %c
set laststatus=2
syntax enable
