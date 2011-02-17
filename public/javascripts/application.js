// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {
                //hide the all of the element with class msg_body
                $(".expandy").hide();
                //toggle the componenet with class msg_body
                $(".row").click(function() {

                    if (!$(this).children().next(".expandy").is(":visible")){
                         $(".expandy").slideUp(600);
                        $(this).children().next(".expandy").slideToggle(600);
                    }
                });
                $(".truckname").click(function() {
                     $(".expandy").slideUp(600);
                });

});

function open_row(row_name){
    $(".expandy").slideUp(600);
    if (!$('#'+row_name).children().next(".expandy").is(":visible")){
         $(".expandy").slideUp(600);
         $('#'+row_name).children().next(".expandy").slideToggle(600);
    }
}

function color_row(row, color){

    if (!$(row).children().next(".expandy").is(":visible")){
        row.style.backgroundColor = color;
    } else {
        row.style.backgroundColor = '#FFF';
    }
}

