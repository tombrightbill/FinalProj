$( document ).ready(function() {
    // var view = new View();
    attachSearch();
});

var attachSearch = function() {
  $('#artist-search').on("submit", function(event) {
    event.preventDefault();
    console.log($(this).serialize());
    console.log($(this).action);
    var content = $(this).serialize();

    var myAjax = $.ajax({
      url: '/search',
      type: 'post',
      data: content
    }).success(function(return_data){
      console.log(return_data);
      console.log("success");
    }).fail(function(){
      console.log("fail")
    });
  });
}
