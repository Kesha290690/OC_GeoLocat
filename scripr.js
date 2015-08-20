var getCity = {
    get: function(valName){
        var searchField = valName;
        var myExp = new RegExp(searchField, "i");
        $.ajax({
            url     : 'catalog/view/javascript/test.json',
            type    : 'get',
            data    : valName,

            success: function(data) {
                $('.my-geo-live-block li').remove();
                try {
                    for (var i = 0; i < data.length; i++) {
                        if (data[i].title.search(myExp) != -1) {
                            $('.for-geo-remove').remove();
                            $('.my-geo-live-block').append(
                                '<li class="my-geo-live-list"><span class="my-geo-only-region">'
                                + data[i].region + '</span><span class="my-geo-only-city">'
                                + data[i].title + '</span></li>');
                        }
                    }
                }
                catch(e) {
                        $('.for-geo-remove').remove();
                        $('.my-geo-live-block').append('<p class="my-geo-live-list for-geo-remove">Города с таким именем не найденно</p>');
                }
            }
        })
    },

    close: function(){
        $('.my-geo-quest').hide(200);
    },

    getNew: function(name){
        $.ajax({
            url:"https://api.novaposhta.ua/v2.0/json/",
            data:{
                "modelName": "Address",
                "calledMethod": "getCities",
                "methodProperties": {
                    "FindByString": name
                },
                "apiKey": "35ac8749097d8f62d404581a596a7849"
            },
            dataType: 'jsonp',
            success:function(json){
                $('.my-geo-live-block li').remove();
                for (var i = 0; i < json.data.length; i++) {
                    $('.for-geo-remove').remove();
                    $('.my-geo-live-block').append(
                        '<li class="my-geo-live-list">'
                        + json.data[i].DescriptionRu + '</li>');
                }
                if($('.my-geo-live-block li').length <= 0) {
                    $('.for-geo-remove').remove();
                    $('.my-geo-live-block').after('<p class="my-geo-live-list for-geo-remove">Города с таким именем не найденно</p>');
                }
            }
        });
    }

}