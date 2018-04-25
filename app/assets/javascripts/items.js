var items = function () {

    $('#datatable').on('click', '#image_request', function (e) {
        var url = e.target.src;
        $('#modal_body_image').attr("src", url);
    });

    return $(window).trigger('resize');
};
$('.items').ready('page:change');
document.addEventListener('turbolinks:load', items);

