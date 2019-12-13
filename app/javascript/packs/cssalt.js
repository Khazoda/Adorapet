console.log("CSSALT.js loaded");
//imports cookie functions from util.js
import {
    setCookie,
    getCookie,
    eraseCookie
} from "./util/util.js";
var theme = "light";
var btntheme = $("#darktheme");

//on document ready after the DOM is loaded but before CSS styling is applied, if the user's cookie shows dark mode was enabled last session, set css elements to dark mode by calling setDark()
$(document).ready(function () {
    if (getCookie("theme") == "dark") {
        theme = "dark";
        setDark();
    }
});

//on dark mode button press store result in cookie and call the function to update css of page elements
$(document).on("click", "#darktheme", function () {
    if (theme == "dark") {
        theme = "light";
        setCookie("theme", "light", 365);
        setLight();
    } else {
        theme = "dark";
        setCookie("theme", "dark", 365);
        setDark();
    }
});
//update css of page elements to dark theme by adding dark class
function setDark() {
    btntheme.toggleClass("dark");

    $("#darktheme").addClass("light");
    $("#divider").addClass("divider_d");
    $("h1").addClass("d_header");

    $("html").addClass("d_html");

}
//update css of page elements to light theme by removing dark class
function setLight() {
    btntheme.toggleClass("dark");

    $("#darktheme").removeClass("light");
    $("#divider").removeClass("divider_d");
    $("h1").removeClass("d_header");

    $("html").removeClass("d_html");

}