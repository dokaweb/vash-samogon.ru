<!-- HTML-код модального окна "Выбор города" -->
<div id="citySelect" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <!-- Заголовок модального окна -->
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title">Выберите свой город</h4>
      </div>
      <!-- Основное содержимое модального окна -->
      <div class="modal-body">
       <p>Выберите свой город из списка. Если вы не нашли свой населенный пункт - выберите ближайший.</p>
        {'cfCities' | snippet : [
            'tplWrapper' => 'cfCities.outer_city',
            'tpl' => 'cfCities.row_city',
            'sortby' => 'name',
            'sortdir' => 'ASC',
        ]}
      </div>
      <!-- Футер модального окна -->
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Закрыть</button>
      </div>
    </div>
  </div>
</div>