
<?php
class SQLConnector {
	

	public $error_flag = false;
	function __construct(){
		$dblocation 	= "localhost"; 
		$dbuser 		= "root";
		$dbpasswd 		= "";
		$db_name 		= "nvmt_ran";
		$db				= null;
		$this->db = new mysqli($dblocation, $dbuser, $dbpasswd, $db_name);
		if($this->db->connect_errno){ echo "Erro connect to MySql"; $this->error_flag = true; return; }
		
	}	
	public function get_all_data($table_name, $fields = array() ){
		$ret_array = array();
		if(!$this->error_flag){
			$result = $this->db->query('select * from '.$table_name.';');
			while($row = $result->fetch_assoc()){
				$tmp_array = array();
				foreach($fields as $field)
					$tmp_array[$field] = $row[$field];
				$ret_array[] = $tmp_array;
			}
		}		
		return $ret_array;
	}
	public function get_db(){ return $this->db; }
}