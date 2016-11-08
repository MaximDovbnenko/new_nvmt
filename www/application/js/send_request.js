var send_page;

$(document).ready(function() {
    send_page = new SendPage();
	send_page.init();
	tinymce.init({ selector:'textarea' });
});

function SendPage(){
	this.send_form = $('#send-request-form');
	this.drop_form = $('#form-send');
}

SendPage.prototype = {
	init: function(){
		var $this = this;
		ajax_send('get_hardwere_selector', null , function(data){
			var div_selector = $('#hardwere-selector');
			$.each(data, function(count, obj){
				/*Строим селектор для выбора оборудования...*/
				$(div_selector).append(
					'<a  status="false" value="' + obj.id + '" class="list-group-item"><h4 class="list-group-item-heading">' + obj.hardwere_name +'</h4></a>');
				var link_tab = $('a[value="'+ obj.id +'"]');
				$(link_tab).on('click', function(obj){ 
					if($(link_tab).attr('status') == 'false'){
						$(link_tab).attr('class', 'list-group-item active')
						$(link_tab).attr('status', 'true')
					}else{
						$(link_tab).attr('class', 'list-group-item')
						$(link_tab).attr('status', 'false')
					}
				});
			});
		});
		$('#send-btn').on('click', function(){
			$this.send();
		});
	}, 
	send:function(){
		ajax_send('get_data',null, function(data){
			$('#CompliteModalBox').modal('show');
		});
		
	}
};
