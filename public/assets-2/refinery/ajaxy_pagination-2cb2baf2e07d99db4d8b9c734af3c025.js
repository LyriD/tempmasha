(function(){this.init_ajaxy_pagination=function(){var t;return"function"==typeof window.history.pushState&&$(".pagination_container").length>0&&(t=$(".pagination_container .pagination a"),t.on("click",function(t){var e,n;return n=this.href.replace(/(\&(amp\;)?)?from_page\=\d+/,""),n+="&from_page="+$(".current").text(),n=n.replace("?&","?").replace(/\s+/,""),e=location.pathname+location.href.split(location.pathname)[1],window.history.pushState({path:e},"",n),$(document).paginateTo(n),t.preventDefault()})),$(".pagination_container").applyMinimumHeightFromChildren(),0===$(".pagination_container").find(".pagination").length?$(".pagination_frame").css("top","0px"):void 0}}).call(this);