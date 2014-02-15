//= require vendor/_jquery-2.0.3
//= require vendor/_jquery.wookmark
//= require vendor/_imagesloaded.pkgd
//= require _helper
//= require _kunsttag
//= require _social
//= require vendor/_infinitescrolling

var index_options = {  
  autoResize: true,
  offset: 30,
  flexibleWidth: 300,
  resizeDelay: 25
}

var permalink_options = $.extend({}, index_options, { flexibleWidth: 600 });
