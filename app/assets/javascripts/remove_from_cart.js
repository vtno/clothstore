$(document).ready(function() {
  return $('#mycart .fi-x').click(function(e) {
    var $this, url;
    e.preventDefault();
    $this = $(this).closest('a');
    url = $this.data('targeturl');
    return $.ajax({
      url: url,
      type: 'put',
      success: function(data) {
        $('.cart-count').html(data);
        return $this.closest('.cart-product').slideUp();
      }
    });
  });
});