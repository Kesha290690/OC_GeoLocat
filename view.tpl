<script type="text/html" id="geo-list">
  <div class="my-geo-main-block">
  <button onclick="getCity.close();" class="my-close-geo"><span class="fa fa-times"></span></button>
  <p class="my-geo-main-heading">�������� ���� �����</p>
  <ul class="my-geo-list-ul">
    <li>����</li>
    <li>�������</li>
    <li>�����</li>
    <li>��������������</li>
  </ul>
  <label class="my-geo-main-label">��� ������� ������ ���������� ����� �������</label>
  <input class="my-geo-main-input" type="text" placeholder="��� �����">
  <div class="my-geo-live-block"></div>
  <p class="my-geo-main-bottom-text">����� ������ ������� ������� �������� �����<br>
    ��� �������� ������ ���������� ������� ��� ���!
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