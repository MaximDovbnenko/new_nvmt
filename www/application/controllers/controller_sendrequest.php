<?php
class Controller_SendRequest extends Controller
{
	function start()
	{	
		if(isset($_POST['action'])){
				$function_post = $_POST['action'];
			try{
				$array_obj = array();
				foreach ($_POST['arg'] as $key => $value) {
					$array_obj[$key] = json_decode($value, true);
				}
				echo json_encode($this->$function_post($array_obj));
			} catch(Exception $e) {
				return $e;
			}
		}else{
			$this->view->generate('send_request.tpl', 'main.tpl');
		}
	}

}