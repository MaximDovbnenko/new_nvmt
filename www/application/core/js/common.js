
function ajax_send(method, args = null, callback){
	var url = document.location.href;
	var arr_names = url.split('/');
	var controller_name = arr_names[arr_names.length - 1];
	var arg = JSON.stringify(args);  
	$.ajax({
			type: "POST",
			url:  controller_name,
			cache: false,
			data: {
				action: method,
				arg: {
					 arg
				}
			},
			success: function(data){
				var trim_data = data.replace(/\s{2,}/g, '');
				if(trim_data != "" && trim_data != undefined){
					var obj = $.parseJSON(trim_data);
					callback(obj);
				}
				callback(null);
			}
		});
}