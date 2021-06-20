set completeopt=menuone,noinsert,noselect
let g:completion_enable_auto_popup = 1
imap <silent> <c-p> <Plug>(completion_trigger)
imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)
