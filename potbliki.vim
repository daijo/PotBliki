" potbliki.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Name:		    potbliki
" Description:	    Maintain a simple Plain Old Text Bliki.
"
"                   See http://github.com/daijo/PotBliki
" 
" Author:	    Daniel Hjort <daniel.hjort@gmail.com>
" Maintainer:	    -- '' --
"
" Licence:	    This program is free software; you can redistribute it
"                   and/or modify it under the terms of the GNU General Public
"                   License.  See http://www.gnu.org/copyleft/gpl.txt
"
" Credits:	    Edwin Steiner <edwin.steiner@gmx.net>
"                       for the potwiki script that this script and the
"                       rest of the potbliki project just complement.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ------------------------------------------------------------------------------
" Exit when your app has already been loaded (or "compatible" mode set)
if exists("g:loaded_potbliki") || &cp
  finish
endif
let g:loaded_potbliki = 1 " your version number
let s:keepcpo           = &cpo
set cpo&vim

let s:revision = "0.1"

" ------------------------------------------------------------------------------
" Public Interface:
if !hasmapto('<Plug>AddPostHeader')
  map <unique> <Leader>bn <Plug>AddPostHeader
endif

if !hasmapto('<Plug>MakeBliki')
  map <unique> <Leader>bm <Plug>MakeBliki
endif

if !hasmapto('<Plug>OpenBliki')
  map <unique> <Leader>bo <Plug>OpenBliki
endif

" ------------------------------------------------------------------------------
" Global Maps:
map <silent> <unique> <script> <Plug>AddPostHeader
 \ :set lz<CR>:call <SID>AddPostHeader()<CR>:set nolz<CR>

map <silent> <unique> <script> <Plug>MakeBliki
 \ :set lz<CR>:call <SID>MakeBliki()<CR>:set nolz<CR>

map <silent> <unique> <script> <Plug>OpenBliki
 \ :set lz<CR>:call <SID>OpenBliki()<CR>:set nolz<CR>

" ------------------------------------------------------------------------------
" Functions 
fun! s:AddPostHeader()

endfun

fun! s:MakeBliki()
  :!potbliki make
endfun

fun! s:OpenBliki()
  :!potbliki open
endfun


" ------------------------------------------------------------------------------
let &cpo= s:keepcpo
unlet s:keepcpo

