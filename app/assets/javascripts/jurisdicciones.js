$(document).ready(function () {
  $("#mensura_jurisdiccion_id").on("change", function () {
    $.ajax({url: "/jurisdicciones/" +  ($(this).val() || 0) + "/get_mensure_attributes.json"}).done(function (jurisdiccion) {
      $("#mensura_mensura_letra").val(jurisdiccion.caracter);
      $("#mensura_mensura_nro").val(jurisdiccion.number + 1);
    });
  })
})
