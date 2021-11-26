$(window).ready(function() {

  $('.add-to-cart-btn').click(function(e) {
    e.preventDefault;
    var pro_id = $(this).val();
    var token = $('input[name=csrfmiddlewaretoken]').val();
    var url = $('input[name=add_item_to_cart_url]').val();
    $.ajax({
        method: "POST",
        url: url,
        data: {
            "product_id": pro_id,
            csrfmiddlewaretoken: token
        },
        success: function(response) {
            if(response.success) {
                $('.alert-success').text(response.success).removeAttr('hidden').hide().show(300);
                $('.add-to-cart-btn[value='+ pro_id +']').hide();
                $('.add-to-cart-btn[value='+ pro_id +']').next().removeAttr('hidden');
                }
            else if (response.error) {
                $('.alert-danger').text(response.error).removeAttr('hidden').hide().show(300);
                }

            $('.reload-cart').load(location.href + ' .reload-cart');
        }
    })
  });

  $('.remove-from-cart-btn').click(function(e) {
    e.preventDefault;
    var pro_id = $(this).val();
    var token = $('input[name=csrfmiddlewaretoken]').val();
    var url = $('input[name=remove_item_from_cart_url]').val();
    $.ajax({
        method: "POST",
        url: url,
        data: {
            "product_id": pro_id,
            csrfmiddlewaretoken: token
        },
        success: function(response) {
            if(response.success) {
                $('.alert-success').text(response.success).show(300);
                $('.remove-from-cart-btn[value='+ pro_id +']').closest('.reload-item').hide();
                }
            else if (response.error) {
                $('.alert-danger').text(response.error).show(300);
                }

            $('.reload-cart').load(location.href + ' .reload-cart');
            $('.reload-items-num1').load(location.href + ' .reload-items-num1');
            $('.reload-items-num2').load(location.href + ' .reload-items-num2');
            $('.reload-items-price').load(location.href + ' .reload-items-price');
        }
    })
  });
})