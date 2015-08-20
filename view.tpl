<script type="text/html" id="geo-list">
  <div class="my-geo-main-block">
  <button onclick="getCity.close();" class="my-close-geo"><span class="fa fa-times"></span></button>
  <p class="my-geo-main-heading">Выберите свой город</p>
  <ul class="my-geo-list-ul">
    <li>Киев</li>
    <li>Харьков</li>
    <li>Львов</li>
    <li>Днепропетровск</li>
  </ul>
  <label class="my-geo-main-label">Или введите другой населенный пункт Украины</label>
  <input class="my-geo-main-input" type="text" placeholder="Ваш город">
  <div class="my-geo-live-block"></div>
  <p class="my-geo-main-bottom-text">Выбор города поможет быстрее оформить заказ<br>
    Это сохранит больше свободного времени для вас!
  </p>
  </div>
</script>
<script>
  $(document).ready(function(){
    $(document).delegate('.my-geo-main-input','keyup', function(e) {
      if ($(this).val().length > 1){
        getCity.getNew($(this).val());
      }
      if(e.keyCode == 40) {
        $('.test-focus:first-child').focus();
      }

    });
	</script>