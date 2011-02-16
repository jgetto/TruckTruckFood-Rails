// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {
                //hide the all of the element with class msg_body
                $(".expandy").hide();
                //toggle the componenet with class msg_body
                $(".row").click(function() {
                    $(".expandy").slideUp(600);
                    if (!$(this).children().next(".expandy").is(":visible")){
                        $(this).children().next(".expandy").slideToggle(600);
                    }
                });
});
