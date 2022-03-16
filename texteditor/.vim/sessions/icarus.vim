let SessionLoad = 1
if &cp | set nocp | endif
xnoremap <silent>  :call multiple_cursors#new("v", 0)
nnoremap <silent>  :call multiple_cursors#new("n", 1)
nmap d :cs find d =expand("<cword>")	
nmap i :cs find i ^=expand("<cfile>")$
nmap f :cs find f =expand("<cfile>")	
nmap e :cs find e =expand("<cword>")	
nmap t :cs find t =expand("<cword>")	
nmap c :cs find c =expand("<cword>")	
nmap g :cs find g =expand("<cword>")	
nmap s :cs find s =expand("<cword>")	
let s:cpo_save=&cpo
set cpo&vim
xmap S <Plug>VSurround
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
xnoremap <silent> gî :call multiple_cursors#select_all("v", 0)
nnoremap <silent> gî :call multiple_cursors#select_all("n", 0)
xnoremap <silent> g :call multiple_cursors#new("v", 0)
nnoremap <silent> g :call multiple_cursors#new("n", 0)
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> <Plug>(multiple-cursors-new-word) :call multiple_cursors#new('v', 1)
nnoremap <silent> <Plug>(multiple-cursors-new) :call multiple_cursors#new('v', 0)
nnoremap <silent> <Plug>(multiple-cursors-skip) :call multiple_cursors#skip()
nnoremap <silent> <Plug>(multiple-cursors-prev) :call multiple_cursors#prev()
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <Plug>GitGutterPreviewHunk :GitGutterPreviewHunk
nnoremap <silent> <Plug>GitGutterUndoHunk :GitGutterUndoHunk
nnoremap <silent> <Plug>GitGutterStageHunk :GitGutterStageHunk
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\"
xnoremap <silent> <Plug>GitGutterTextObjectOuterVisual :call gitgutter#hunk#text_object(0)
xnoremap <silent> <Plug>GitGutterTextObjectInnerVisual :call gitgutter#hunk#text_object(1)
onoremap <silent> <Plug>GitGutterTextObjectOuterPending :call gitgutter#hunk#text_object(0)
onoremap <silent> <Plug>GitGutterTextObjectInnerPending :call gitgutter#hunk#text_object(1)
nmap <Nul><Nul>d :vert scs find d =expand("<cword>")
nmap <Nul><Nul>i :vert scs find i ^=expand("<cfile>")$	
nmap <Nul><Nul>f :vert scs find f =expand("<cfile>")	
nmap <Nul><Nul>e :vert scs find e =expand("<cword>")
nmap <Nul><Nul>t :vert scs find t =expand("<cword>")
nmap <Nul><Nul>c :vert scs find c =expand("<cword>")
nmap <Nul><Nul>g :vert scs find g =expand("<cword>")
nmap <Nul><Nul>s :vert scs find s =expand("<cword>")
nmap <Nul>d :scs find d =expand("<cword>")	
nmap <Nul>i :scs find i ^=expand("<cfile>")$	
nmap <Nul>f :scs find f =expand("<cfile>")	
nmap <Nul>e :scs find e =expand("<cword>")	
nmap <Nul>t :scs find t =expand("<cword>")	
nmap <Nul>c :scs find c =expand("<cword>")	
nmap <Nul>g :scs find g =expand("<cword>")	
nmap <Nul>s :scs find s =expand("<cword>")	
imap S <Plug>ISurround
imap s <Plug>Isurround
imap  <Plug>Isurround
xnoremap <silent> î :call multiple_cursors#select_all("v", 0)
nnoremap <silent> î :call multiple_cursors#select_all("n", 1)
cnoremap kj 
inoremap kj 
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set cscoperelative
set cscopetag
set cscopeverbose
set directory=~/.vim/swapfiles//
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=C.
set laststatus=2
set lazyredraw
set nomodeline
set mouse=a
set path=.,/usr/include,,,**
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/bundle/editorconfig-vim,~/.vim/bundle/nerdtree,~/.vim/bundle/vim-airline,~/.vim/bundle/vim-dispatch,~/.vim/bundle/vim-gitgutter,~/.vim/bundle/vim-multiple-cursors,~/.vim/bundle/vim-pathogen,~/.vim/bundle/vim-surround,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set showtabline=2
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabline=%!airline#extensions#tabline#get()
set tags=tags
set virtualedit=onemore
set wildignore=*.o,tags,*~
set wildmenu
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/test/iverilog
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 AStatement.cc
badd +0 Attrib.cc
badd +0 HName.cc
badd +0 Module.cc
badd +0 PClass.cc
badd +0 PDelays.cc
badd +0 PEvent.cc
badd +33 PExpr.cc
badd +82 PFunction.cc
badd +0 PGate.cc
badd +0 PGenerate.cc
badd +0 PModport.cc
badd +0 PNamedItem.cc
badd +0 PPackage.cc
badd +0 PScope.cc
badd +0 PSpec.cc
badd +38 PTask.cc
badd +0 PUdp.cc
badd +0 PWire.cc
badd +0 Statement.cc
badd +0 async.cc
badd +0 cprop.cc
badd +0 design_dump.cc
badd +0 discipline.cc
badd +0 dup_expr.cc
badd +0 elab_anet.cc
badd +0 elab_expr.cc
badd +267 elab_lval.cc
badd +0 elab_net.cc
badd +0 elab_scope.cc
badd +0 elab_sig.cc
badd +0 elab_sig_analog.cc
badd +0 elab_type.cc
badd +6222 elaborate.cc
badd +0 elaborate_analog.cc
badd +0 emit.cc
badd +0 eval.cc
badd +0 eval_attrib.cc
badd +0 eval_tree.cc
badd +0 exposenodes.cc
badd +0 expr_synth.cc
badd +0 functor.cc
badd +0 link_const.cc
badd +0 load_module.cc
badd +0 main.cc
badd +0 net_analog.cc
badd +0 net_assign.cc
badd +0 net_design.cc
badd +0 net_event.cc
badd +234 net_expr.cc
badd +0 net_func.cc
badd +0 net_func_eval.cc
badd +0 net_link.cc
badd +0 net_modulo.cc
badd +0 net_nex_input.cc
badd +0 net_nex_output.cc
badd +0 net_proc.cc
badd +0 net_scope.cc
badd +0 net_tran.cc
badd +0 net_udp.cc
badd +0 netclass.cc
badd +0 netdarray.cc
badd +0 netenum.cc
badd +0 netlist.cc
badd +0 netmisc.cc
badd +0 netparray.cc
badd +0 netqueue.cc
badd +0 netscalar.cc
badd +0 netstruct.cc
badd +0 nettypes.cc
badd +0 netvector.cc
badd +0 nodangle.cc
badd +0 pad_to_width.cc
badd +0 parse_misc.cc
badd +685 pform.cc
badd +0 pform_analog.cc
badd +0 pform_class_type.cc
badd +0 pform_disciplines.cc
badd +0 pform_dump.cc
badd +0 pform_package.cc
badd +151 pform_pclass.cc
badd +1 pform_string_type.cc
badd +0 pform_struct_type.cc
badd +0 pform_types.cc
badd +0 symbol_search.cc
badd +0 sync.cc
badd +0 synth.cc
badd +0 synth2.cc
badd +0 sys_funcs.cc
badd +0 t-dll-analog.cc
badd +0 t-dll-api.cc
badd +0 t-dll-expr.cc
badd +0 t-dll-proc.cc
badd +0 t-dll.cc
badd +0 target.cc
badd +0 verinum.cc
badd +0 verireal.cc
badd +0 vpi_modules.cc
badd +0 AStatement.h
badd +0 Attrib.h
badd +0 HName.h
badd +0 Module.h
badd +46 PClass.h
badd +0 PDelays.h
badd +0 PEvent.h
badd +195 PExpr.h
badd +0 PGate.h
badd +0 PGenerate.h
badd +0 PModport.h
badd +28 PNamedItem.h
badd +0 PPackage.h
badd +39 PScope.h
badd +0 PSpec.h
badd +35 PTask.h
badd +0 PUdp.h
badd +0 PWire.h
badd +87 Statement.h
badd +0 acc_user.h
badd +0 compiler.h
badd +0 discipline.h
badd +0 functor.h
badd +0 ivl_alloc.h
badd +0 ivl_assert.h
badd +465 ivl_target.h
badd +0 ivl_target_priv.h
badd +0 lexor_keyword.h
badd +0 named.h
badd +0 netclass.h
badd +0 netdarray.h
badd +0 netenum.h
badd +0 netlist.h
badd +0 netmisc.h
badd +0 netparray.h
badd +0 netqueue.h
badd +0 netscalar.h
badd +0 netstruct.h
badd +0 nettypes.h
badd +0 netvector.h
badd +0 parse_api.h
badd +42 parse_misc.h
badd +269 pform.h
badd +328 pform_types.h
badd +49 property_qual.h
badd +0 sv_vpi_user.h
badd +0 svector.h
badd +0 t-dll.h
badd +0 target.h
badd +28 util.h
badd +0 verinum.h
badd +0 verireal.h
badd +0 veriuser.h
badd +0 version_base.h
badd +0 vpi_user.h
badd +813 parse.y
badd +0 syn-rules.y
badd +0 cadpli/cadpli.c
badd +0 dosify.c
badd +0 driver/main.c
badd +0 driver/substit.c
badd +0 driver-vpi/main.c
badd +0 examples/hello_vpi.c
badd +0 ivlpp/main.c
badd +0 libveriuser/a_close.c
badd +0 libveriuser/a_compare_handles.c
badd +0 libveriuser/a_configure.c
badd +0 libveriuser/a_fetch_argc.c
badd +0 libveriuser/a_fetch_argv.c
badd +0 libveriuser/a_fetch_dir.c
badd +0 libveriuser/a_fetch_fullname.c
badd +0 libveriuser/a_fetch_location.c
badd +0 libveriuser/a_fetch_param.c
badd +0 libveriuser/a_fetch_range.c
badd +0 libveriuser/a_fetch_tfarg.c
badd +0 libveriuser/a_fetch_time.c
badd +0 libveriuser/a_fetch_type.c
badd +0 libveriuser/a_fetch_type_str.c
badd +0 libveriuser/a_fetch_value.c
badd +0 libveriuser/a_handle_by_name.c
badd +0 libveriuser/a_handle_hiconn.c
badd +0 libveriuser/a_handle_object.c
badd +0 libveriuser/a_handle_parent.c
badd +0 libveriuser/a_handle_simulated_net.c
badd +0 libveriuser/a_handle_tfarg.c
badd +0 libveriuser/a_initialize.c
badd +0 libveriuser/a_next.c
badd +0 libveriuser/a_next_bit.c
badd +0 libveriuser/a_next_port.c
badd +0 libveriuser/a_next_topmod.c
badd +0 libveriuser/a_object_of_type.c
badd +0 libveriuser/a_product_version.c
badd +0 libveriuser/a_set_value.c
badd +0 libveriuser/a_vcl.c
badd +0 libveriuser/a_version.c
badd +0 libveriuser/asynch.c
badd +0 libveriuser/delay.c
badd +0 libveriuser/exprinfo.c
badd +0 libveriuser/finish.c
badd +0 libveriuser/getcstringp.c
badd +0 libveriuser/getinstance.c
badd +0 libveriuser/getlongp.c
badd +0 libveriuser/getp.c
badd +0 libveriuser/getsimtime.c
badd +0 libveriuser/io_print.c
badd +0 libveriuser/math.c
badd +0 libveriuser/mc_scan_plusargs.c
badd +0 libveriuser/nodeinfo.c
badd +0 libveriuser/nump.c
badd +0 libveriuser/priv.c
badd +0 libveriuser/putlongp.c
badd +0 libveriuser/putp.c
badd +0 libveriuser/spname.c
badd +0 libveriuser/typep.c
badd +0 libveriuser/veriusertfs.c
badd +0 libveriuser/workarea.c
badd +0 tgt-fpga/d-generic-edif.c
badd +0 tgt-fpga/d-generic.c
badd +0 tgt-fpga/d-lpm.c
badd +0 tgt-fpga/d-virtex.c
badd +0 tgt-fpga/d-virtex2.c
badd +0 tgt-fpga/edif.c
badd +0 tgt-fpga/fpga.c
badd +0 tgt-fpga/gates.c
badd +0 tgt-fpga/generic.c
badd +0 tgt-fpga/mangle.c
badd +0 tgt-fpga/tables.c
badd +0 tgt-fpga/xilinx.c
badd +0 tgt-null/null.c
badd +0 tgt-pal/dump_final.c
badd +0 tgt-pal/emit_jed.c
badd +0 tgt-pal/enables.c
badd +0 tgt-pal/fit_log.c
badd +0 tgt-pal/fit_reg.c
badd +0 tgt-pal/imain.c
badd +0 tgt-pal/pads.c
badd +0 tgt-stub/classes.c
badd +0 tgt-stub/constant.c
badd +0 tgt-stub/enumerate.c
badd +0 tgt-stub/expression.c
badd +0 tgt-stub/statement.c
badd +0 tgt-stub/stub.c
badd +0 tgt-stub/switches.c
badd +0 tgt-stub/types.c
badd +0 tgt-verilog/verilog.c
badd +0 tgt-vhdl/vhpi/finish.c
badd +0 tgt-vlog95/event.c
badd +0 tgt-vlog95/expr.c
badd +0 tgt-vlog95/logic_lpm.c
badd +0 tgt-vlog95/misc.c
badd +0 tgt-vlog95/numbers.c
badd +0 tgt-vlog95/scope.c
badd +0 tgt-vlog95/stmt.c
badd +0 tgt-vlog95/udp.c
badd +0 tgt-vlog95/vlog95.c
badd +0 tgt-vvp/draw_class.c
badd +0 tgt-vvp/draw_delay.c
badd +0 tgt-vvp/draw_enum.c
badd +0 tgt-vvp/draw_mux.c
badd +0 tgt-vvp/draw_net_input.c
badd +0 tgt-vvp/draw_substitute.c
badd +0 tgt-vvp/draw_switch.c
badd +0 tgt-vvp/draw_ufunc.c
badd +0 tgt-vvp/draw_vpi.c
badd +0 tgt-vvp/eval_bool.c
badd +0 tgt-vvp/eval_condit.c
badd +0 tgt-vvp/eval_expr.c
badd +277 tgt-vvp/eval_object.c
badd +0 tgt-vvp/eval_real.c
badd +0 tgt-vvp/eval_string.c
badd +0 tgt-vvp/eval_vec4.c
badd +0 tgt-vvp/modpath.c
badd +0 tgt-vvp/stmt_assign.c
badd +0 tgt-vvp/vector.c
badd +0 tgt-vvp/vvp.c
badd +0 tgt-vvp/vvp_process.c
badd +0 tgt-vvp/vvp_scope.c
badd +0 version.c
badd +0 vpi/fastlz.c
badd +0 vpi/fstapi.c
badd +0 vpi/libvpi.c
badd +0 vpi/lxt2_write.c
badd +0 vpi/lxt_write.c
badd +0 vpi/lz4.c
badd +0 vpi/mt19937int.c
badd +0 vpi/stringheap.c
badd +0 vpi/sys_clog2.c
badd +0 vpi/sys_convert.c
badd +0 vpi/sys_countdrivers.c
badd +0 vpi/sys_darray.c
badd +0 vpi/sys_deposit.c
badd +0 vpi/sys_display.c
badd +0 vpi/sys_fileio.c
badd +0 vpi/sys_finish.c
badd +0 vpi/sys_fst.c
badd +0 vpi/sys_icarus.c
badd +0 vpi/sys_lxt.c
badd +0 vpi/sys_lxt2.c
badd +0 vpi/sys_plusargs.c
badd +0 vpi/sys_priv.c
badd +0 vpi/sys_queue.c
badd +0 vpi/sys_random.c
badd +0 vpi/sys_random_mti.c
badd +0 vpi/sys_readmem.c
badd +0 vpi/sys_scanf.c
badd +0 vpi/sys_sdf.c
badd +0 vpi/sys_table.c
badd +0 vpi/sys_time.c
badd +0 vpi/sys_vcd.c
badd +0 vpi/sys_vcdoff.c
badd +0 vpi/table_mod.c
badd +0 vpi/v2005_math.c
badd +0 vpi/v2009_array.c
badd +0 vpi/v2009_bitvec.c
badd +0 vpi/v2009_enum.c
badd +0 vpi/v2009_string.c
badd +0 vpi/v2009_table.c
badd +0 vpi/va_math.c
badd +0 vpi/vams_simparam.c
badd +0 vpi/vcd_priv.c
badd +0 vpi/vhdl_table.c
badd +0 vpi/vhdl_textio.c
badd +0 vpi/vpi_debug.c
badd +0 vvp/draw_tt.c
badd +417 parse.cc
argglobal
silent! argdel *
$argadd AStatement.cc
$argadd cadpli/cadpli.c
$argadd dosify.c
$argadd driver/main.c
$argadd driver/substit.c
$argadd driver-vpi/main.c
$argadd examples/hello_vpi.c
$argadd ivlpp/main.c
$argadd libveriuser/a_close.c
$argadd libveriuser/a_compare_handles.c
$argadd libveriuser/a_configure.c
$argadd libveriuser/a_fetch_argc.c
$argadd libveriuser/a_fetch_argv.c
$argadd libveriuser/a_fetch_dir.c
$argadd libveriuser/a_fetch_fullname.c
$argadd libveriuser/a_fetch_location.c
$argadd libveriuser/a_fetch_param.c
$argadd libveriuser/a_fetch_range.c
$argadd libveriuser/a_fetch_tfarg.c
$argadd libveriuser/a_fetch_time.c
$argadd libveriuser/a_fetch_type.c
$argadd libveriuser/a_fetch_type_str.c
$argadd libveriuser/a_fetch_value.c
$argadd libveriuser/a_handle_by_name.c
$argadd libveriuser/a_handle_hiconn.c
$argadd libveriuser/a_handle_object.c
$argadd libveriuser/a_handle_parent.c
$argadd libveriuser/a_handle_simulated_net.c
$argadd libveriuser/a_handle_tfarg.c
$argadd libveriuser/a_initialize.c
$argadd libveriuser/a_next.c
$argadd libveriuser/a_next_bit.c
$argadd libveriuser/a_next_port.c
$argadd libveriuser/a_next_topmod.c
$argadd libveriuser/a_object_of_type.c
$argadd libveriuser/a_product_version.c
$argadd libveriuser/a_set_value.c
$argadd libveriuser/a_vcl.c
$argadd libveriuser/a_version.c
$argadd libveriuser/asynch.c
$argadd libveriuser/delay.c
$argadd libveriuser/exprinfo.c
$argadd libveriuser/finish.c
$argadd libveriuser/getcstringp.c
$argadd libveriuser/getinstance.c
$argadd libveriuser/getlongp.c
$argadd libveriuser/getp.c
$argadd libveriuser/getsimtime.c
$argadd libveriuser/io_print.c
$argadd libveriuser/math.c
$argadd libveriuser/mc_scan_plusargs.c
$argadd libveriuser/nodeinfo.c
$argadd libveriuser/nump.c
$argadd libveriuser/priv.c
$argadd libveriuser/putlongp.c
$argadd libveriuser/putp.c
$argadd libveriuser/spname.c
$argadd libveriuser/typep.c
$argadd libveriuser/veriusertfs.c
$argadd libveriuser/workarea.c
$argadd tgt-fpga/d-generic-edif.c
$argadd tgt-fpga/d-generic.c
$argadd tgt-fpga/d-lpm.c
$argadd tgt-fpga/d-virtex.c
$argadd tgt-fpga/d-virtex2.c
$argadd tgt-fpga/edif.c
$argadd tgt-fpga/fpga.c
$argadd tgt-fpga/gates.c
$argadd tgt-fpga/generic.c
$argadd tgt-fpga/mangle.c
$argadd tgt-fpga/tables.c
$argadd tgt-fpga/xilinx.c
$argadd tgt-null/null.c
$argadd tgt-pal/dump_final.c
$argadd tgt-pal/emit_jed.c
$argadd tgt-pal/enables.c
$argadd tgt-pal/fit_log.c
$argadd tgt-pal/fit_reg.c
$argadd tgt-pal/imain.c
$argadd tgt-pal/pads.c
$argadd tgt-stub/classes.c
$argadd tgt-stub/constant.c
$argadd tgt-stub/enumerate.c
$argadd tgt-stub/expression.c
$argadd tgt-stub/statement.c
$argadd tgt-stub/stub.c
$argadd tgt-stub/switches.c
$argadd tgt-stub/types.c
$argadd tgt-verilog/verilog.c
$argadd tgt-vhdl/vhpi/finish.c
$argadd tgt-vlog95/event.c
$argadd tgt-vlog95/expr.c
$argadd tgt-vlog95/logic_lpm.c
$argadd tgt-vlog95/misc.c
$argadd tgt-vlog95/numbers.c
$argadd tgt-vlog95/scope.c
$argadd tgt-vlog95/stmt.c
$argadd tgt-vlog95/udp.c
$argadd tgt-vlog95/vlog95.c
$argadd tgt-vvp/draw_class.c
$argadd tgt-vvp/draw_delay.c
$argadd tgt-vvp/draw_enum.c
$argadd tgt-vvp/draw_mux.c
$argadd tgt-vvp/draw_net_input.c
$argadd tgt-vvp/draw_substitute.c
$argadd tgt-vvp/draw_switch.c
$argadd tgt-vvp/draw_ufunc.c
$argadd tgt-vvp/draw_vpi.c
$argadd tgt-vvp/eval_bool.c
$argadd tgt-vvp/eval_condit.c
$argadd tgt-vvp/eval_expr.c
$argadd tgt-vvp/eval_object.c
$argadd tgt-vvp/eval_real.c
$argadd tgt-vvp/eval_string.c
$argadd tgt-vvp/eval_vec4.c
$argadd tgt-vvp/modpath.c
$argadd tgt-vvp/stmt_assign.c
$argadd tgt-vvp/vector.c
$argadd tgt-vvp/vvp.c
$argadd tgt-vvp/vvp_process.c
$argadd tgt-vvp/vvp_scope.c
$argadd version.c
$argadd vpi/fastlz.c
$argadd vpi/fstapi.c
$argadd vpi/libvpi.c
$argadd vpi/lxt2_write.c
$argadd vpi/lxt_write.c
$argadd vpi/lz4.c
$argadd vpi/mt19937int.c
$argadd vpi/stringheap.c
$argadd vpi/sys_clog2.c
$argadd vpi/sys_convert.c
$argadd vpi/sys_countdrivers.c
$argadd vpi/sys_darray.c
$argadd vpi/sys_deposit.c
$argadd vpi/sys_display.c
$argadd vpi/sys_fileio.c
$argadd vpi/sys_finish.c
$argadd vpi/sys_fst.c
$argadd vpi/sys_icarus.c
$argadd vpi/sys_lxt.c
$argadd vpi/sys_lxt2.c
$argadd vpi/sys_plusargs.c
$argadd vpi/sys_priv.c
$argadd vpi/sys_queue.c
$argadd vpi/sys_random.c
$argadd vpi/sys_random_mti.c
$argadd vpi/sys_readmem.c
$argadd vpi/sys_scanf.c
$argadd vpi/sys_sdf.c
$argadd vpi/sys_table.c
$argadd vpi/sys_time.c
$argadd vpi/sys_vcd.c
$argadd vpi/sys_vcdoff.c
$argadd vpi/table_mod.c
$argadd vpi/v2005_math.c
$argadd vpi/v2009_array.c
$argadd vpi/v2009_bitvec.c
$argadd vpi/v2009_enum.c
$argadd vpi/v2009_string.c
$argadd vpi/v2009_table.c
$argadd vpi/va_math.c
$argadd vpi/vams_simparam.c
$argadd vpi/vcd_priv.c
$argadd vpi/vhdl_table.c
$argadd vpi/vhdl_textio.c
$argadd vpi/vpi_debug.c
$argadd vvp/draw_tt.c
$argadd Attrib.cc
$argadd HName.cc
$argadd Module.cc
$argadd PClass.cc
$argadd PDelays.cc
$argadd PEvent.cc
$argadd PExpr.cc
$argadd PFunction.cc
$argadd PGate.cc
$argadd PGenerate.cc
$argadd PModport.cc
$argadd PNamedItem.cc
$argadd PPackage.cc
$argadd PScope.cc
$argadd PSpec.cc
$argadd PTask.cc
$argadd PUdp.cc
$argadd PWire.cc
$argadd Statement.cc
$argadd async.cc
$argadd cprop.cc
$argadd design_dump.cc
$argadd discipline.cc
$argadd dup_expr.cc
$argadd elab_anet.cc
$argadd elab_expr.cc
$argadd elab_lval.cc
$argadd elab_net.cc
$argadd elab_scope.cc
$argadd elab_sig.cc
$argadd elab_sig_analog.cc
$argadd elab_type.cc
$argadd elaborate.cc
$argadd elaborate_analog.cc
$argadd emit.cc
$argadd eval.cc
$argadd eval_attrib.cc
$argadd eval_tree.cc
$argadd exposenodes.cc
$argadd expr_synth.cc
$argadd functor.cc
$argadd link_const.cc
$argadd load_module.cc
$argadd main.cc
$argadd net_analog.cc
$argadd net_assign.cc
$argadd net_design.cc
$argadd net_event.cc
$argadd net_expr.cc
$argadd net_func.cc
$argadd net_func_eval.cc
$argadd net_link.cc
$argadd net_modulo.cc
$argadd net_nex_input.cc
$argadd net_nex_output.cc
$argadd net_proc.cc
$argadd net_scope.cc
$argadd net_tran.cc
$argadd net_udp.cc
$argadd netclass.cc
$argadd netdarray.cc
$argadd netenum.cc
$argadd netlist.cc
$argadd netmisc.cc
$argadd netparray.cc
$argadd netqueue.cc
$argadd netscalar.cc
$argadd netstruct.cc
$argadd nettypes.cc
$argadd netvector.cc
$argadd nodangle.cc
$argadd pad_to_width.cc
$argadd parse_misc.cc
$argadd pform.cc
$argadd pform_analog.cc
$argadd pform_class_type.cc
$argadd pform_disciplines.cc
$argadd pform_dump.cc
$argadd pform_package.cc
$argadd pform_pclass.cc
$argadd pform_string_type.cc
$argadd pform_struct_type.cc
$argadd pform_types.cc
$argadd symbol_search.cc
$argadd sync.cc
$argadd synth.cc
$argadd synth2.cc
$argadd sys_funcs.cc
$argadd t-dll-analog.cc
$argadd t-dll-api.cc
$argadd t-dll-expr.cc
$argadd t-dll-proc.cc
$argadd t-dll.cc
$argadd target.cc
$argadd verinum.cc
$argadd verireal.cc
$argadd vpi_modules.cc
$argadd AStatement.h
$argadd Attrib.h
$argadd HName.h
$argadd Module.h
$argadd PClass.h
$argadd PDelays.h
$argadd PEvent.h
$argadd PExpr.h
$argadd PGate.h
$argadd PGenerate.h
$argadd PModport.h
$argadd PNamedItem.h
$argadd PPackage.h
$argadd PScope.h
$argadd PSpec.h
$argadd PTask.h
$argadd PUdp.h
$argadd PWire.h
$argadd Statement.h
$argadd acc_user.h
$argadd compiler.h
$argadd discipline.h
$argadd functor.h
$argadd ivl_alloc.h
$argadd ivl_assert.h
$argadd ivl_target.h
$argadd ivl_target_priv.h
$argadd lexor_keyword.h
$argadd named.h
$argadd netclass.h
$argadd netdarray.h
$argadd netenum.h
$argadd netlist.h
$argadd netmisc.h
$argadd netparray.h
$argadd netqueue.h
$argadd netscalar.h
$argadd netstruct.h
$argadd nettypes.h
$argadd netvector.h
$argadd parse_api.h
$argadd parse_misc.h
$argadd pform.h
$argadd pform_types.h
$argadd property_qual.h
$argadd sv_vpi_user.h
$argadd svector.h
$argadd t-dll.h
$argadd target.h
$argadd util.h
$argadd verinum.h
$argadd verireal.h
$argadd veriuser.h
$argadd version_base.h
$argadd vpi_user.h
$argadd parse.y
$argadd syn-rules.y
edit parse.y
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 119 + 119) / 238)
exe 'vert 2resize ' . ((&columns * 118 + 119) / 238)
argglobal
if bufexists('parse.y') | buffer parse.y | else | edit parse.y | endif
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> [c <Plug>GitGutterPrevHunk
nmap <buffer> \hp <Plug>GitGutterPreviewHunk
nmap <buffer> \hu <Plug>GitGutterUndoHunk
nmap <buffer> \hs <Plug>GitGutterStageHunk
nmap <buffer> ]c <Plug>GitGutterNextHunk
xmap <buffer> ac <Plug>GitGutterTextObjectOuterVisual
omap <buffer> ac <Plug>GitGutterTextObjectOuterPending
xmap <buffer> ic <Plug>GitGutterTextObjectInnerVisual
omap <buffer> ic <Plug>GitGutterTextObjectInnerPending
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'yacc'
setlocal filetype=yacc
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'yacc'
setlocal syntax=yacc
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1449 - ((44 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1449
normal! 0
wincmd w
argglobal
if bufexists('pform_pclass.cc') | buffer pform_pclass.cc | else | edit pform_pclass.cc | endif
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> [c <Plug>GitGutterPrevHunk
nmap <buffer> \hp <Plug>GitGutterPreviewHunk
nmap <buffer> \hu <Plug>GitGutterUndoHunk
nmap <buffer> \hs <Plug>GitGutterStageHunk
nmap <buffer> ]c <Plug>GitGutterNextHunk
xmap <buffer> ac <Plug>GitGutterTextObjectOuterVisual
omap <buffer> ac <Plug>GitGutterTextObjectOuterPending
xmap <buffer> ic <Plug>GitGutterTextObjectInnerVisual
omap <buffer> ic <Plug>GitGutterTextObjectInnerPending
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=81
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=qtc
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=8
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 151 - ((37 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
151
normal! 019|
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 119) / 238)
exe 'vert 2resize ' . ((&columns * 118 + 119) / 238)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
