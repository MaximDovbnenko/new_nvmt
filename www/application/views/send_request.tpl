<script type="text/javascript" src="application/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="application/js/tinymce/tinymce.min.js"></script>
<script type="text/javascript" src="application/js/send_request.js"></script>


 <div style="margin-top: 100px;" class="row">
 	<div class="col-xs-2"></div>
	 <div class="col-xs-8">
	    <div style="" class="panel panel-primary">
	        <div class="panel-heading">Форма заявки</div>
	        <div style="color: #232323;" class="panel-body">
	           <ul style="list-style-type:none; margin-top: 10px;">
			   		<li>
						<label for="name">ФИО</label>
						<input  id="name" name="name" class="form-control" />
					</li>
					<li>
						<label for="email">Ваш адрес электронной почты (Email Address)</label>
						<input  id="email" type="email" name="email" class="form-control" />
					</li>
					<li>
						<label for="org">Название Вашей организации</label>
						<input id="organization" class="form-control" />
					</li>
					<li>
						<label for="org">Выбирите оборудование, которое планируете использывать</label>
						<div  id="hardwere-selector" class="list-group"> </div>
					</li>
					<li>
						<label for="message">Напишите Ваш коментарий</label>
						<textarea  id="message" name="message" rows="8" cols="50"></textarea>
					</li>
					<li>
						<div style="margin-top: 20px;" class="row">
							<div class="col-xs-8 offset-4">
								<a id="send-btn" class="btn btn-primary btn-large"><span class="glyphicon glyphicon-ok"></span> Отправить</a>
							</div>
						</div>
					</li>
				</ul>
	        </div>
	    </div>
	</div>
	<div class="col-xs-2"></div>
</div>
<style>
	.panel-heading li > div{
		margin-top: 10px;
	}
</style>