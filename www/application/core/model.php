<?php

include('SQLConnector.php');

	class Model{
		public $sql = null;
		
		function __construct(){ 
			$this->sql = new SQLConnector();
		}
		public function get_data($args = array()){ 
			
		}
	}
?>