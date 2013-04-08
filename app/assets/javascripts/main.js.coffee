jQuery ->
  $("select").dropkick()

  $('#rootwizard').bootstrapWizard()

  $("[data-toggle=tooltip]").tooltip("show");

  # Init tags input
  $("#tagsinput").tagsInput()

  # JS input/textarea placeholder
  $("input, textarea").placeholder();

  # $(".btn-group a").click(function() {
  #     $(this).siblings().removeClass("active");
  #     $(this).addClass("active");
  # });