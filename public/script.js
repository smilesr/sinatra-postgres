$(document).ready(function(){
  $("#sortDate").click(function(){
    $.ajax({url: "demo_test.json", success: function(result){
        var parsedResult = JSON.parse(result);
        var myBio = "His name is " + parsedResult.name + ". He is " + parsedResult.age + " years old.  His highest level of education is a " + parsedResult.highest_degree + $
            $("#div1").html(myBio);
    }});
  });
});
}
var sortDate = document.getElementById('sort-date');
sortDate.addEventListener('click',sortByDate);