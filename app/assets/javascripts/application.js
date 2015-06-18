// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.validate
//= require jquery.validate.additional-methods




$(document).on("click", "#contact-button", function(){
  var first     = $("#captcha-first").text().trim(),
      symbol    = $("#captcha-middle").text().trim(),
      last      = $("#captcha-last").text().trim(),
      res_input = $("#captcha_result").val(),
      result;

  if (symbol==="+") {
    result = parseInt(first) + parseInt(last);
  } else if (symbol==="-") {
    result = parseInt(first) - parseInt(last);
  };

  if (result != res_input) {
    $(".captcha-error-msg").text("Are you a human? please enter captcha result");
    return false;
  } else {
    $(".captcha-error-msg").text("");
  };
});

$(document).on("click", "#quick-contact-button", function(){
  var first     = $("#quick-captcha-first").text().trim(),
      symbol    = $("#quick-captcha-middle").text().trim(),
      last      = $("#quick-captcha-last").text().trim(),
      res_input = $("#quick_captcha_result").val(),
      result;

  if (symbol==="+") {
    result = parseInt(first) + parseInt(last);
  } else if (symbol==="-") {
    result = parseInt(first) - parseInt(last);
  };

  console.log(result)
  console.log(res_input)

  if (result != res_input) {
    $(".quick-captcha-error-msg").text("Are you a human? please enter captcha result");
    return false;
  } else {
    $(".quick-captcha-error-msg").text("");
  };
});