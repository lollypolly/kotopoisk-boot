$(document).ready(function() {
    $.ajax({
        url: "http://localhost:8080/cats",
        context: document.body,
    }).done(function(msg) {
        for(let i = 0; i < msg.length; i++) {
            $("#content").append('<img src="' + msg[i]['url'] + '">');
        }
    });
});