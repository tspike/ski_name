clientSideValidations.formBuilders["FormtasticBootstrap::FormBuilder"] = {
  add: function (element, settings, message) {
    if (element.data('valid') !== false) {
      element.addClass('error').data('valid', false);
      var $parent = element.closest('.input');
      $parent.parent().addClass('error');
      $('<span/>').addClass('help-inline').text(message).appendTo($parent);
    } else {
      element.parent().find('span.help-inline').text(message);
    }
  },
  remove: function (element, settings) {
    var $parent = element.closest('.input');
    $parent.parent().removeClass('error');
    $parent.find('span.help-inline').remove();
    element.removeClass('error');
  }
};
