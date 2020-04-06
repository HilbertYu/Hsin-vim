set tags+=$HOME/.vim/tags/stl_tags
set tags+=$HOME/.vim/tags/ue4_tags
set tags+=/usr/local/Cellar/ffmpeg/3.3.2/include/tags
set tags+=tags,../tags
"set tags+=$HOME/.vim/tags/ffmpeg_tags
let OmniCpp_DefaultNamespaces = ["_GLIBCXX_STD"]
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 0 " autocomplete after ::
set completeopt=menuone,menu,longest ",preview
"
