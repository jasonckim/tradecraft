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
//= require_tree .


$(document).ready(function(){
  $('#new_skill').on('submit', function(event){
    event.preventDefault();
    var form = $(this);
    var username = $('#skill_username').val();
    var bio = $('#skill_bio').val();
    var skill = $('#skill_skills').val();
    var tolearn = $('#skill_tolearn').val();

    $.ajax({
      url: form.attr('action'),
      method: form.attr('method'),
      data: {
        "skill": {
          "username": username,
          "bio": bio,
          "skill": skill,
          "tolearn": tolearn
        }
      },
      dataType: "json",
      success: function(data) {
        console.log(data);
        var ul = $('ul')
        var skill =  "<li><b>"+data.username+"</b> - " +data.bio + "</li>";
        ul.append(skill);
        $(':text').val('');
      },
      error: function(){
        alert("Server is broken!");
      }
    });
  });
});