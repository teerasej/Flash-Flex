<?php

class Hello 
{

	public function __construct() {
	
	}

	public function sayHi() {
		
		return "Hello!";
	
	}
	
	public function sayHelloWithName( $name ) {
		return "Hello!, " . $name;
	}
	
	public function getEmployee() 
	{
		$arr = array( 'manager' => 'Joe' , 'partner' => 'Elliot' );
		
		return $arr;
	}
	
	public function getEmployeeDetail() 
	{
		$arr = array( 'name' => 'Joe' , 
			'address' => array('street' => 'Rama 2 Road', 'province' => 'Bangkok' , 'zipcode' => '10150' ) );
		
		return $arr;
	}
	
	public function extractEmployee( $value )
	{
		$res = "";
		$res .= "Name: " . $value->name . ", ";
		$res .= "Address: " . $value->address->street . ", ";// . $value['address']['province'] . " " . $value['address']['zipcode'];
		
		return $res;
	}
	
	
}

?>