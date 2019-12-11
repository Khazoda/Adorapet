$(function () {
    $('#testadd').click(function () {
        var newDiv = $('<div class="lb_entry"><h4><a>Some text</a></h4></div>');
        //newDiv.style.background = "#000";
        $('.leaderboard_container').append(newDiv);
    });
});