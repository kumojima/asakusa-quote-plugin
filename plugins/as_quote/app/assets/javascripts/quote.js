AsakusaQuote = {
  quote: function(id){
    var message = $("#" + id)
      .attr("original")
      .split("\n")
      .map(function(str) { return "> " + str; })
      .join("\n")
      + "\n\n";
    $("#message").val(message);
  }
}
