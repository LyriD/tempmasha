var image_added;!function(t){var e,n,i,r,o,a;t(document).ready(function(){var n=t("#page_image_picker");a=n.data("input-type"),o="wym"==a,t("#custom_images_tab a").click(function(){if(!n.data("size-applied")&&o){var e=t(".page_part:first .wym_box"),i=t(".page_part:first iframe");n.css({height:e.height(),width:e.width()}).data("size-applied",!0).corner("tr 5px").corner("bottom 5px").find(".wym_box").css({backgroundColor:"white",height:i.height()+t(".page_part:first .wym_area_top").height()-parseInt(t(".wym_area_top .label_inline_with_link a").css("lineHeight")),width:i.width()-20,"border-color":i.css("border-top-color"),"border-style":i.css("border-top-style"),"border-width":i.css("border-top-width"),padding:"0px 10px 0px 10px"})}}),t("#page_images li textarea:hidden").each(function(e){var n=t(this).attr("name"),i=t(this);i.attr("data-old-id",i.attr("id")),i.attr("name","ignore_me_"+e),i.attr("id","ignore_me_"+e);var r=t("<input>").addClass("caption").attr("type","hidden").attr("name",n).attr("id",i.attr("data-old-id")).val(i.val());i.parents("li").first().append(r)}),e(),t(".page-images-caption-modal").hide(),r=t("#page_images .js-page-images-template").detach()}),e=function(){o&&WYMeditor.onload_functions.push(function(){t(".wym_box").css({width:null})}),t("#page_images").sortable({tolerance:"pointer",placeholder:"placeholder",cursor:"drag",items:"li",stop:i}),t("#page_images").on("mouseenter mouseleave","li",function(e){var r=t(this),o=r.find(".image_actions");if("mouseenter"==e.type){if(0==o.length){o=t("<div class='image_actions'></div>");var a=t("<img src='/assets/refinery/icons/delete.png' width='16' height='16' />");if(a.appendTo(o),a.click(function(){t(this).parents("li").first().remove(),i()}),r.find("textarea.page_caption").length>0){var s=t("<img src='/assets/refinery/icons/user_comment.png' width='16' height='16' class='caption' />");s.appendTo(o),s.click(n)}else o.addClass("no_captions");o.appendTo(r)}o.show()}else"mouseleave"==e.type&&o.hide()}),i()},image_added=function(n){var i=r.clone(),o=t(n).attr("id").replace("image_","");i.find("input:hidden:first").val(o),t("<img />").attr({title:t(n).attr("title"),alt:t(n).attr("alt"),src:t(n).attr("data-grid")}).appendTo(i),i.attr("id","image_"+o).removeClass("empty"),i.appendTo(t("#page_images")),e()},n=function(){var e=t(this).closest("li"),n=e.find(".page-images-caption-modal > textarea"),i=n.parent(),r={textarea:{width:400,height:"auto"},wym:{width:928,height:530}};i.find(".js-page-images-done").on("click",function(){i.dialog("close")});var s=function(){o&&n.data("wymeditor").update(),t("li.current_caption_list_item").removeClass("current_caption_list_item"),t("#"+n.attr("data-old-id")).val(n.val()),i.dialog("destroy")};e.addClass("current_caption_list_item"),i.dialog({title:"Add Caption",modal:!0,resizable:!1,autoOpen:!0,width:r[a].width,height:r[a].height,close:s}),o?n.addClass("wymeditor active_rotator_wymeditor widest").wymeditor(wymeditor_boot_options):n.show()},i=function(){t("#page_images li textarea:hidden").each(function(e,n){var i=t(n).attr("name").split("_");i[2]=""+e,t(n).attr("name",i.join("_")),t(n).attr("id",t(n).attr("id").replace(/_\d/,"_"+e)),t(n).attr("data-old-id",t(n).attr("data-old-id").replace(/_\d_/,"_"+e+"_").replace(/_\d/,"_"+e))}),t("#page_images li").each(function(e,n){t("input:hidden",n).each(function(){var n=t(this),i=n.attr("name").split("]");i[1]="["+e,n.attr("name",i.join("]")),n.attr("id",n.attr("id").replace(/_\d_/,"_"+e+"_").replace(/_\d/,"_"+e))})})}}(jQuery);