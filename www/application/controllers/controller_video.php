<?php
class Controller_Video extends Controller
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
			$this->view->generate('video.tpl', 'main.tpl');
		}
	}

	function get_video_files($args = array()){
		if(file_exists(VIDEO_PATH)){
			$ret =  scandir("application/video");
			return $ret;
		}
	}
	function set_new_path($args = array()){
		if(isset($args['arg']['path'])){
			$video_path = "application/video/".$args['path'];
			$res  = array('location' => '/player');
			return $res;
		}
	}

}