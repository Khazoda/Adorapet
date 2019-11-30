console.log("custom js file loaded");
if (document.readyState === "complete") {
  alert("Loaded");
}

$(document).ready(function() {
  console.log("Cssalt.js Loaded");
});

$(document).ready(function() {
  $("#profilechangeimage")
    .mouseover(function() {
      var src = $(this)
        .attr("src")
        .replace("default_user.png", "edit_overlay.png");
      $(this).attr("src", src);
    })
    .mouseout(function() {
      var src = $(this)
        .attr("src")
        .replace("edit_overlay.png", "default_user.png");
      $(this).attr("src", src);
    });
});
